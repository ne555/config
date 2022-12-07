# statnot ~/.config/statnot.py

# Default time a notification is show, unless specified in notification
# ratpoison is configured to not clear messages
DEFAULT_NOTIFY_TIMEOUT = 0 # milliseconds

# Maximum time a notification is allowed to show
MAX_NOTIFY_TIMEOUT = 5000 # milliseconds

# Maximum number of characters in a notification.
NOTIFICATION_MAX_LENGTH = 100 # number of characters

# Time between regular status updates
STATUS_UPDATE_INTERVAL = 2.0 # seconds

# Command to fetch status text from. We read from stdout.
# Each argument must be an element in the array
# os must be imported to use os.getenv
#import os
#STATUS_COMMAND = ['/bin/sh', f'{os.getenv('HOME')}/.statusline.sh']

# Always show text from STATUS_COMMAND? If false, only show notifications
USE_STATUSTEXT=True

# Put incoming notifications in a queue, so each one is shown.
# If false, the most recent notification is shown directly.
QUEUE_NOTIFICATIONS=False

# update_text(text) is called when the status text should be updated
# If there is a pending notification to be formatted, it is appended as
# the final argument to the STATUS_COMMAND, e.g. as $1 in default shellscript

import subprocess
def update_text(text):
    notification = text.splitlines()
    if notification:
        first_line = notification[0]
        first_line = first_line.decode('UTF-8')
        subprocess.call(['ratpoison', '--command', 'echo ' + first_line])
