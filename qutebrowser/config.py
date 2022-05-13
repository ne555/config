#/* vim:set foldmethod=marker:*/

# Do not load settings done via the GUI.
config.load_autoconfig(False)

# Aliases for commands.
c.aliases = {
        'w': 'session-save',
        'q': 'close',
        'qa': 'quit',
        'wq': 'quit --save',
        'wqa': 'quit --save'}
c.aliases.update({
    'je': 'set content.javascript.enabled True',
    'jd': 'set content.javascript.enabled False'})

## Time between auto-saves of config/cookies/etc. (in milliseconds)
c.auto_save.interval = 30000

# Needs `:wq` (`:quit --save`) to save open tabs (and restore them)
c.auto_save.session = False

## Backend to use to display websites.
c.backend = 'webengine'

# Map keys to other keys, so that they are equivalent in all modes.
c.bindings.key_mappings = {
        '<Ctrl-[>': '<Escape>',
        '<Ctrl-6>': '<Ctrl-^>',
        '<Ctrl-M>': '<Return>',
        '<Ctrl-J>': '<Return>',
        '<Ctrl-I>': '<Tab>',
        '<Shift-Return>': '<Return>',
        '<Enter>': '<Return>',
        '<Shift-Enter>': '<Return>',
        '<Ctrl-Enter>': '<Ctrl-Return>'}

# When to show a changelog after qutebrowser was upgraded.
c.changelog_after_upgrade = 'major'

#{{{ colors
#{{{ Completion widget
c.colors.completion.category.bg = 'black'
c.colors.completion.category.border.bottom = 'black'
c.colors.completion.category.border.top = 'black'
c.colors.completion.category.fg = 'white'
# rows
c.colors.completion.even.bg = 'black'
c.colors.completion.odd.bg = '#222'
c.colors.completion.fg = ['white']
# selected
c.colors.completion.item.selected.bg = '#040'
c.colors.completion.item.selected.border.bottom = 'green'
c.colors.completion.item.selected.border.top = 'green'
c.colors.completion.item.selected.fg = 'white'
# match
c.colors.completion.match.fg = 'red'
c.colors.completion.scrollbar.bg = '#222'
c.colors.completion.scrollbar.fg = 'white'
#}}}

#{{{ Context menu
c.colors.contextmenu.disabled.bg = None
c.colors.contextmenu.disabled.fg = None
c.colors.contextmenu.menu.fg = None
c.colors.contextmenu.selected.bg = None
c.colors.contextmenu.selected.fg = None
#}}}

#{{{ Download bar
c.colors.downloads.bar.bg = 'black'
c.colors.downloads.error.bg = 'red'
c.colors.downloads.error.fg = 'white'
c.colors.downloads.start.bg = 'blue'
c.colors.downloads.start.fg = 'white'
c.colors.downloads.stop.bg = 'green'
c.colors.downloads.stop.fg = 'white'
c.colors.downloads.system.bg = 'none'
c.colors.downloads.system.fg = 'none'
#}}}

#{{{  Hints
c.colors.hints.bg = 'yellow'
c.colors.hints.fg = 'black'
c.colors.hints.match.fg = 'green'
c.colors.keyhint.bg = 'black'
c.colors.keyhint.fg = 'white'
c.colors.keyhint.suffix.fg = 'orange'
#}}}

#{{{  Messages
c.colors.messages.error.bg = 'red'
c.colors.messages.error.border = 'red'
c.colors.messages.error.fg = 'white'
c.colors.messages.info.bg = 'black'
c.colors.messages.info.border = 'black'
c.colors.messages.info.fg = 'white'
c.colors.messages.warning.bg = 'orange'
c.colors.messages.warning.border = 'orange'
c.colors.messages.warning.fg = 'black'
#}}}

#{{{  Prompts
c.colors.prompts.bg = 'black'
c.colors.prompts.border = '1px solid gray'
c.colors.prompts.fg = 'white'
c.colors.prompts.selected.bg = 'grey'
c.colors.prompts.selected.fg = 'white'
#}}}

#{{{  Status bar
c.colors.statusbar.caret.bg = 'purple'
c.colors.statusbar.caret.fg = 'white'
c.colors.statusbar.caret.selection.bg = 'blueviolet'
c.colors.statusbar.caret.selection.fg = 'white'
c.colors.statusbar.command.bg = 'black'
c.colors.statusbar.command.fg = 'white'
c.colors.statusbar.command.private.bg = 'darkslategray'
c.colors.statusbar.command.private.fg = 'white'
c.colors.statusbar.insert.bg = 'darkgreen'
c.colors.statusbar.insert.fg = 'white'
c.colors.statusbar.normal.bg = 'black'
c.colors.statusbar.normal.fg = 'white'
c.colors.statusbar.passthrough.bg = 'darkblue'
c.colors.statusbar.passthrough.fg = 'white'
c.colors.statusbar.private.bg = 'darkslategray'
c.colors.statusbar.private.fg = 'white'
c.colors.statusbar.progress.bg = 'white'
c.colors.statusbar.url.error.fg = 'orange'
c.colors.statusbar.url.fg = 'white'
c.colors.statusbar.url.hover.fg = 'aqua'
c.colors.statusbar.url.success.http.fg = 'white'
c.colors.statusbar.url.success.https.fg = 'white'
c.colors.statusbar.url.warn.fg = 'yellow'
#}}}

#{{{  Tab bar
c.colors.tabs.bar.bg = '#333'
c.colors.tabs.even.bg = 'black'
c.colors.tabs.even.fg = 'white'
c.colors.tabs.odd.bg = '#333'
c.colors.tabs.odd.fg = 'white'
c.colors.tabs.indicator.error = 'red'
c.colors.tabs.indicator.start = 'blue'
c.colors.tabs.indicator.stop = 'green'
c.colors.tabs.indicator.system = 'none'
c.colors.tabs.pinned.even.bg = c.colors.tabs.even.bg
c.colors.tabs.pinned.even.fg = c.colors.tabs.even.fg
c.colors.tabs.pinned.odd.bg = c.colors.tabs.odd.bg
c.colors.tabs.pinned.odd.fg = c.colors.tabs.odd.fg
c.colors.tabs.pinned.selected.even.bg = 'darkgreen'
c.colors.tabs.pinned.selected.even.fg = 'white'
c.colors.tabs.pinned.selected.odd.bg = 'darkgreen'
c.colors.tabs.pinned.selected.odd.fg = 'white'
c.colors.tabs.selected.even.bg = 'darkgreen'
c.colors.tabs.selected.even.fg = 'white'
c.colors.tabs.selected.odd.bg = 'darkgreen'
c.colors.tabs.selected.odd.fg = 'white'
#}}}

#{{{  Webpage
c.colors.webpage.bg = 'white'
c.colors.webpage.darkmode.algorithm = 'lightness-hsl'
c.colors.webpage.darkmode.contrast = 0.0
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.grayscale.all = False
c.colors.webpage.darkmode.grayscale.images = 0.0
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.policy.page = 'smart'
c.colors.webpage.darkmode.threshold.background = 0
c.colors.webpage.darkmode.threshold.text = 256
c.colors.webpage.preferred_color_scheme = 'dark'
#}}}
#}}}

#{{{ Completion
c.completion.cmd_history_max_items = 0
c.completion.delay = 0
c.completion.favorite_paths = []
c.completion.height = '25%'
c.completion.min_chars = 1
c.completion.open_categories = ['searchengines', 'quickmarks', 'bookmarks', 'filesystem']
c.completion.quick = True
c.completion.scrollbar.padding = 2
c.completion.scrollbar.width = 12
c.completion.show = 'always'
c.completion.shrink = False
c.completion.timestamp_format = '%Y-%m-%d %H:%M'
c.completion.use_best_match = False
c.completion.web_history.exclude = []
c.completion.web_history.max_items = 0
#}}}

#{{{ Content
c.confirm_quit = ['never']
c.content.autoplay = False

#{{{  Blocking
c.content.blocking.adblock.lists = ['https://easylist.to/easylist/easylist.txt', 'https://easylist.to/easylist/easyprivacy.txt']
c.content.blocking.enabled = True
c.content.blocking.hosts.block_subdomains = True
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.content.blocking.method = 'hosts'
c.content.blocking.whitelist = []
#}}}

c.content.cache.size = None
c.content.canvas_reading = True
c.content.cookies.accept = 'all'
c.content.cookies.store = True
c.content.default_encoding = 'utf8'
c.content.desktop_capture = 'ask'
c.content.dns_prefetch = True
c.content.fullscreen.overlay_timeout = 3000
c.content.fullscreen.window = False
c.content.geolocation = False

#{{{  headers
c.content.headers.accept_language = 'en-US,en;q=0.9'
c.content.headers.custom = {}
c.content.headers.do_not_track = True
c.content.headers.referer = 'never' # 'same-domain'
c.content.headers.user_agent = 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0'
#}}}

c.content.hyperlink_auditing = False
c.content.images = True

#{{{  javascript
c.content.javascript.alert = False
c.content.javascript.can_access_clipboard = False
c.content.javascript.can_open_tabs_automatically = False
c.content.javascript.enabled = True
c.content.javascript.log = {'unknown': 'debug', 'info': 'debug', 'warning': 'debug', 'error': 'debug'}
c.content.javascript.modal_dialog = False
c.content.javascript.prompt = True
#}}}

c.content.local_content_can_access_file_urls = True
c.content.local_content_can_access_remote_urls = True
c.content.local_storage = True
c.content.media.audio_capture = 'ask'
c.content.media.audio_video_capture = 'ask'
c.content.media.video_capture = 'ask'
c.content.mouse_lock = 'ask'
c.content.mute = False
c.content.netrc_file = None
c.content.notifications.enabled = False
c.content.notifications.presenter = 'messages'
c.content.notifications.show_origin = True
c.content.pdfjs = False
c.content.persistent_storage = False
c.content.plugins = False
c.content.prefers_reduced_motion = True
c.content.print_element_backgrounds = True
c.content.private_browsing = False
c.content.proxy = 'system'
c.content.register_protocol_handler = 'ask'
c.content.site_specific_quirks.enabled = True
c.content.site_specific_quirks.skip = ['js-string-replaceall']
c.content.tls.certificate_errors = 'load-insecurely'
c.content.unknown_url_scheme_policy = 'allow-from-user-interaction'
c.content.user_stylesheets = ["~/.config/qutebrowser/global_style.css"]
c.content.webgl = True
c.content.webrtc_ip_handling_policy = 'all-interfaces'
c.content.xss_auditing = False
#}}}

#{{{ Downloads
c.downloads.location.directory = '~/datos/descargas/'
c.downloads.location.prompt = False
c.downloads.location.remember = False
c.downloads.location.suggestion = 'filename'
c.downloads.open_dispatcher = None
c.downloads.position = 'top'
c.downloads.prevent_mixed_content = True
c.downloads.remove_finished = 0
#}}}

#{{{ Editor
c.editor.command = ['st', 'nvim', '{file}']
c.editor.encoding = 'utf-8'
c.editor.remove_file = True
#}}}

#{{{ Fileselect
c.fileselect.folder.command = ['st', 'vifm', '--choose-dir={}']
c.fileselect.handler = 'default'
c.fileselect.multiple_files.command = ['st', 'vifm', '--choose-files={}']
c.fileselect.single_file.command = ['st', 'vifm', '--choose-files={}']
#}}}

#{{{ Fonts
c.fonts.completion.category = 'bold default_size default_family'
c.fonts.completion.entry = 'default_size default_family'
c.fonts.contextmenu = None
c.fonts.debug_console = 'default_size default_family'
c.fonts.default_family = []
c.fonts.default_size = '10pt'
c.fonts.downloads = 'default_size default_family'
c.fonts.hints = 'bold default_size default_family'
c.fonts.keyhint = 'default_size default_family'
c.fonts.messages.error = 'default_size default_family'
c.fonts.messages.info = 'default_size default_family'
c.fonts.messages.warning = 'default_size default_family'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = 'default_size default_family'
c.fonts.tabs.selected = 'default_size default_family'
c.fonts.tabs.unselected = 'default_size default_family'
c.fonts.web.family.cursive = ''
c.fonts.web.family.fantasy = ''
c.fonts.web.family.fixed = ''
c.fonts.web.family.sans_serif = ''
c.fonts.web.family.serif = ''
c.fonts.web.family.standard = ''
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 13
c.fonts.web.size.minimum = 0
c.fonts.web.size.minimum_logical = 6
#}}}

#{{{ Hints
c.hints.auto_follow = 'unique-match'
c.hints.auto_follow_timeout = 100
c.hints.border = '1px solid black'
c.hints.chars = 'asdfghjkl'
c.hints.dictionary = '/usr/share/dict/words'
c.hints.hide_unmatched_rapid_hints = True
c.hints.leave_on_load = False
c.hints.min_chars = 1
c.hints.mode = 'number'
c.hints.next_regexes = [
        '\\bnext\\b',
        '\\bmore\\b',
        '\\bnewer\\b',
        '\\b[>→≫]\\b',
        '\\b(>>|»)\\b',
        '\\bcontinue\\b',
        '\\bsiguiente\\b' ]
c.hints.padding = {'top': 0, 'bottom': 0, 'left': 3, 'right': 3}
c.hints.prev_regexes = [
        '\\bprev(ious)?\\b',
        '\\bback\\b',
        '\\bolder\\b',
        '\\b[<←≪]\\b',
        '\\b(<<|«)\\b',
        '\\banterior\\b' ]
c.hints.radius = 0
c.hints.scatter = True
c.hints.selectors = {
        'all': [
            'a',
            'area',
            'textarea',
            'select',
            'input:not([type="hidden"])',
            'button',
            'frame',
            'iframe',
            'img',
            'link',
            'summary',
            '[contenteditable]:not([contenteditable="false"])',
            '[onclick]',
            '[onmousedown]',
            '[role="link"]',
            '[role="option"]',
            '[role="button"]',
            '[role="tab"]',
            '[role="checkbox"]',
            '[role="menuitem"]',
            '[role="menuitemcheckbox"]',
            '[role="menuitemradio"]',
            '[ng-click]',
            '[ngClick]',
            '[data-ng-click]',
            '[x-ng-click]',
            '[tabindex]:not([tabindex="-1"])'],
        'links': ['a[href]',
            'area[href]',
            'link[href]',
            '[role="link"][href]'],
        'images': ['img'],
        'media': ['audio',
            'img',
            'video'],
        'url': ['[src]',
            '[href]'],
        'inputs': ['input[type="text"]',
            'input[type="date"]',
            'input[type="datetime-local"]',
            'input[type="email"]',
            'input[type="month"]',
            'input[type="number"]',
            'input[type="password"]',
            'input[type="search"]',
            'input[type="tel"]',
            'input[type="time"]',
            'input[type="url"]',
            'input[type="week"]',
            'input:not([type])',
            '[contenteditable]:not([contenteditable="false"])',
            'textarea']}
c.hints.uppercase = False
#}}}

c.history_gap_interval = -1

#{{{ Input
c.input.escape_quits_reporter = True
c.input.forward_unbound_keys = 'none'
c.input.insert_mode.auto_enter = True
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = False
c.input.insert_mode.leave_on_load = True
c.input.insert_mode.plugins = False
c.input.links_included_in_focus_chain = True
c.input.match_counts = True
c.input.media_keys = False
c.input.mode_override = 'normal'
c.input.mouse.back_forward_buttons = False
c.input.mouse.rocker_gestures = False
c.input.partial_timeout = 0
c.input.spatial_navigation = False
#}}}

c.keyhint.blacklist = []
c.keyhint.delay = 300
c.keyhint.radius = 0

#{{{ logging
c.logging.level.console = 'info'
c.logging.level.ram = 'debug'
#}}}

c.messages.timeout = 3000

c.new_instance_open_target = 'tab'
c.new_instance_open_target_window = 'last-focused'

c.prompt.filebrowser = True
c.prompt.radius = 0

#{{{ qt settings
c.qt.args = []
c.qt.chromium.low_end_device_mode = 'auto'
c.qt.chromium.process_model = 'process-per-site-instance'
c.qt.chromium.sandboxing = 'enable-all'
c.qt.environ = {}
c.qt.force_platform = None
c.qt.force_platformtheme = None
c.qt.force_software_rendering = 'none'
c.qt.highdpi = False
c.qt.workarounds.locale = False
c.qt.workarounds.remove_service_workers = False
#}}}

c.scrolling.bar = 'never'
c.scrolling.smooth = True

#{{{ Search
c.search.ignore_case = 'smart'
c.search.incremental = False
c.search.wrap = True
#}}}

c.session.default_name = None
c.session.lazy_restore = True

c.spellcheck.languages = []

#{{{ Status bar
c.statusbar.padding = {'top': 1, 'bottom': 1, 'left': 0, 'right': 0}
c.statusbar.position = 'bottom'
c.statusbar.show = 'always'
c.statusbar.widgets = [
        'keypress',
        'url',
        'scroll',
        'history',
        'tabs',
        'progress']
#}}}

#{{{ Tab
c.tabs.background = True
c.tabs.close_mouse_button = 'none'
c.tabs.close_mouse_button_on_bar = 'ignore'
c.tabs.favicons.scale = 1.0
c.tabs.favicons.show = 'always'
c.tabs.focus_stack_size = 10
c.tabs.indicator.padding = {'top': 2, 'bottom': 2, 'left': 0, 'right': 4}
c.tabs.indicator.width = 3
c.tabs.last_close = 'ignore'
c.tabs.max_width = -1
c.tabs.min_width = -1
c.tabs.mode_on_change = 'normal'
c.tabs.mousewheel_switching = False
c.tabs.new_position.related = 'last'
c.tabs.new_position.stacking = True
c.tabs.new_position.unrelated = 'last'
c.tabs.padding = {'top': 0, 'bottom': 0, 'left': 5, 'right': 5}
c.tabs.pinned.frozen = True
c.tabs.pinned.shrink = True
c.tabs.position = 'left'
c.tabs.select_on_remove = 'next'
c.tabs.show = 'always'
c.tabs.show_switching_delay = 800
c.tabs.tabs_are_windows = False
c.tabs.title.alignment = 'left'
c.tabs.title.format = '{audio}{index} {current_title}'
c.tabs.title.format_pinned = '{audio}{index} {current_title}'
c.tabs.tooltips = True
c.tabs.undo_stack_size = -1
c.tabs.width = '15%'
c.tabs.wrap = True
#}}}

#{{{ URL
c.url.auto_search = 'naive'
c.url.default_page = 'https://start.duckduckgo.com/'
c.url.incdec_segments = ['path', 'query']
c.url.open_base_url = True
c.url.searchengines = {
    'DEFAULT' : 'https://duckduckgo.com/?q={}',
    'amdb' : 'http://www.animenewsnetwork.com/encyclopedia/search/name?q={}',
    'anime' : 'https://myanimelist.net/anime.php?q={}',
    'arch' : 'https://wiki.archlinux.org/?search={}',
    'aur' : 'http://aur.archlinux.org/packages.php?O=0&L=0&detail=1&C=0&K={}&SeB=nd&SB=n&SO=a&PP=30&do_Search=Go&setlang=en',
    'cpp' : 'http://www.google.com/search?q=site%3Acplusplus.com%20{}',
    'ddg' : 'https://duckduckgo.com/?q={}',
    'g' : 'https://google.com/search?q={}',
    'gi' : 'http://images.google.com/images?q={}',
    'i' : 'https://duckduckgo.com/?q={}&iax=images&ia=images',
    'imdb' : 'http://www.imdb.com/find?s=all&q={}',
    'iqdb' : 'http://www.iqdb.org/?url={}',
    'manga' : 'http://www.mangaupdates.com/series.html?stype=title&search={}',
    'rae' : 'http://dle.rae.es/{}',
    'sin' : 'http://www.wordreference.com/sinonimos/{}',
    'wes' : 'http://es.wikipedia.org/w/wiki.phtml?search={}&go=Go',
    'wiki' : 'http://en.wikipedia.org/w/wiki.phtml?search={}&go=Go',
    'wr' : 'https://www.wordreference.com/es/en/translation.asp?spen={}',
    'y' : 'http://www.iteroni.com/results?search_query={}',
    'r': 'http://old.reddit.com/r/{}/new'
}
c.url.start_pages = ['https://start.duckduckgo.com']
c.url.yank_ignored_parameters = ['ref', 'utm_source', 'utm_medium', 'utm_campaign', 'utm_term', 'utm_content']
#}}}

#{{{ Window
c.window.hide_decoration = True
c.window.title_format = '{perc}{current_title}{title_sep}qutebrowser'
c.window.transparent = False
#}}}

#{{{ Zoom
c.zoom.default = '100%'
c.zoom.levels = ['25%', '33%', '50%', '67%', '75%', '90%', '100%', '110%', '125%', '150%', '175%', '200%', '250%', '300%', '400%', '500%']
c.zoom.mouse_divider = 512
#}}}

#{{{ Bindings
c.bindings.default = {}
def bind_chained(key, *commands):
    """Assign a sequence of commands to the key"""
    config.bind(key, ' ;; '.join(commands))

def bind_multiple(keys, commands):
    """Asssign several keys to the same command"""
    for k in keys:
        config.bind(k, commands)

bind_chained('<Escape>', 'clear-keychain', 'search', 'fullscreen --leave')
config.bind('<Ctrl-R>', 'config-source')

#{{{ Normal mode
#{{{ Zoom
config.bind('+', 'zoom-in')
config.bind('-', 'zoom-out')
config.bind('=', 'zoom')
#}}}

config.bind('@', 'macro-run')
config.bind(':', 'set-cmd-text :')
config.bind('<Ctrl-V>', 'mode-enter passthrough')

#{{{ Search
config.bind('/', 'set-cmd-text /')
config.bind('?', 'set-cmd-text ?')
config.bind('n', 'search-next')
config.bind('N', 'search-prev')
#}}}

#{{{ Hints
config.bind(';I', 'hint --rapid images tab-bg')
config.bind('F', 'hint links tab-bg')
config.bind(';Y', 'hint links yank-primary')
config.bind(';d', 'hint all spawn --detach download_media.sh {hint-url}')
config.bind(';D', 'spawn --detach download_media.sh {url}')
config.bind('f', 'hint all normal')
config.bind(';h', 'hint all hover')
config.bind(';i', 'hint inputs')
config.bind(';o', 'hint links fill :open {hint-url}')
config.bind(';y', 'hint links yank')
#}}}

#{{{ Video
config.bind('x', 'spawn --detach mpv --pause {url}')
config.bind('X', 'spawn --detach mpv --pause --ytdl-format=worst {url}')
config.bind(';x', 'hint links spawn --detach mpv --pause {hint-url}')
config.bind(';X', 'hint links spawn --detach mpv --pause --ytdl-format=worst {hint-url}')
#}}}

#{{{ Tabs
config.bind('<Alt-1>', 'tab-focus 1')
config.bind('<Alt-2>', 'tab-focus 2')
config.bind('<Alt-3>', 'tab-focus 3')
config.bind('<Alt-4>', 'tab-focus 4')
config.bind('<Alt-5>', 'tab-focus 5')
config.bind('<Alt-6>', 'tab-focus 6')
config.bind('<Alt-7>', 'tab-focus 7')
config.bind('<Alt-8>', 'tab-focus 8')
config.bind('<Alt-9>', 'tab-focus 9')
config.bind('<Alt-9>', 'tab-focus -1')
bind_multiple(['J', 'gt'], 'tab-next')
bind_multiple(['K', 'gT'], 'tab-prev')
config.bind('gm', 'tab-move')
bind_multiple(['H', 'gl'], 'tab-move -')
bind_multiple(['L', 'gr'], 'tab-move +')
config.bind('<Alt-m>', 'tab-mute')
config.bind('<Ctrl-W>', 'tab-close')
config.bind('<Ctrl-p>', 'tab-pin')
config.bind('tC', 'tab-clone')

#}}}

#{{{ Navigation
config.bind('[[', 'navigate prev')
config.bind(']]', 'navigate next')
config.bind('gu', 'navigate up')
config.bind('}}', 'navigate increment')
config.bind('{{', 'navigate decrement')
bind_multiple([',', '<'], 'back')
bind_multiple(['.', '>'], 'forward')
#}}}

config.bind('<Ctrl-Alt-p>', 'print')

#{{{ Scroll
config.bind('<Ctrl-B>', 'scroll-page 0 -1')
config.bind('<Ctrl-F>', 'scroll-page 0 1')
config.bind('<Ctrl-D>', 'scroll-page 0 0.5')
config.bind('<Ctrl-U>', 'scroll-page 0 -0.5')
config.bind('gg', 'scroll-to-perc 0')
config.bind('G', 'scroll-to-perc')
config.bind('^', 'scroll-to-perc --horizontal 0')
config.bind('$', 'scroll-to-perc --horizontal')
config.bind('`', 'mode-enter set_mark')
config.bind("'", 'mode-enter jump_mark')
config.bind('h', 'scroll left')
config.bind('j', 'scroll down')
config.bind('k', 'scroll up')
config.bind('l', 'scroll right')
#}}}

config.bind('r', 'reload')
config.bind('R', 'reload -f')

config.bind('<Return>', 'selection-follow')
config.bind('<Ctrl-Return>', 'selection-follow -t')

config.bind('u', 'undo')

#{{{ Open
config.bind('<Ctrl-Shift-N>', 'open -p')
config.bind('o', 'set-cmd-text -s :open')
config.bind('O', 'set-cmd-text :open {url}')
config.bind('to', 'set-cmd-text -s :open --bg')
config.bind('tO', 'set-cmd-text :open --bg {url}')
#}}}

#{{{ Bookmark
config.bind('m', 'quickmark-save')
config.bind('M', 'bookmark-add')
config.bind('b', 'set-cmd-text -s :quickmark-load -t')
config.bind('B', 'set-cmd-text -s :bookmark-load -t')
#}}}

config.bind('<Ctrl-s>', 'stop')

#{{{ Clipboard
config.bind('pp', 'open -- {clipboard}')
config.bind('pP', 'open -- {primary}')
config.bind('Pp', 'open -t -- {clipboard}')
config.bind('PP', 'open -t -- {primary}')
config.bind('yy', 'yank')
config.bind('yY', 'yank -s')
config.bind('yd', 'yank domain')
config.bind('yD', 'yank domain -s')
config.bind('ym', 'yank inline [{title}]({url})')
config.bind('yM', 'yank inline [{title}]({url}) -s')
config.bind('yP', 'yank pretty-url -s')
config.bind('yp', 'yank pretty-url')
config.bind('yt', 'yank title')
config.bind('yT', 'yank title -s')
#}}}

#{{{
config.bind('Sq', 'bookmark-list')
config.bind('Sb', 'bookmark-list --jump')
config.bind('Sh', 'history')
config.bind('Ss', 'set')
config.bind('St', 'set-cmd-text -sr :tab-focus')
#}}}

config.bind('v', 'mode-enter caret')
config.bind('V', 'mode-enter caret ;; selection-toggle --line')

config.bind('ZZ', 'quit --save')

#{{{ Downloads
config.bind('dc', 'download-cancel')
config.bind('dC', 'download-clear')
config.bind('dd', 'download')
#}}}

bind_multiple(['~', 'gf'], 'view-source -e')

config.bind('i', 'mode-enter insert')
config.bind('q', 'macro-record')

#{{{ Inspector
config.bind('wi', 'devtools')
config.bind('wIf', 'devtools-focus')
config.bind('wIh', 'devtools left')
config.bind('wIj', 'devtools bottom')
config.bind('wIk', 'devtools top')
config.bind('wIl', 'devtools right')
config.bind('wIw', 'devtools window')
#}}}

#}}}

#{{{ Bindings for caret mode
config.bind('$', 'move-to-end-of-line', mode='caret')
config.bind('0', 'move-to-start-of-line', mode='caret')
config.bind('<Ctrl-Space>', 'selection-drop', mode='caret')
config.bind('<Escape>', 'mode-leave', mode='caret')
config.bind('<Return>', 'yank selection', mode='caret')
config.bind('<Space>', 'selection-toggle', mode='caret')
config.bind('G', 'move-to-end-of-document', mode='caret')
config.bind('H', 'scroll left', mode='caret')
config.bind('J', 'scroll down', mode='caret')
config.bind('K', 'scroll up', mode='caret')
config.bind('L', 'scroll right', mode='caret')
config.bind('V', 'selection-toggle --line', mode='caret')
config.bind('Y', 'yank selection -s', mode='caret')
config.bind('[', 'move-to-start-of-prev-block', mode='caret')
config.bind(']', 'move-to-start-of-next-block', mode='caret')
config.bind('b', 'move-to-prev-word', mode='caret')
config.bind('c', 'mode-enter normal', mode='caret')
config.bind('e', 'move-to-end-of-word', mode='caret')
config.bind('gg', 'move-to-start-of-document', mode='caret')
config.bind('h', 'move-to-prev-char', mode='caret')
config.bind('j', 'move-to-next-line', mode='caret')
config.bind('k', 'move-to-prev-line', mode='caret')
config.bind('l', 'move-to-next-char', mode='caret')
config.bind('o', 'selection-reverse', mode='caret')
config.bind('v', 'selection-toggle', mode='caret')
config.bind('w', 'move-to-next-word', mode='caret')
config.bind('y', 'yank selection', mode='caret')
config.bind('{', 'move-to-end-of-prev-block', mode='caret')
config.bind('}', 'move-to-end-of-next-block', mode='caret')
#}}}

#{{{ Bindings for command mode
config.bind('<Alt-B>', 'rl-backward-word', mode='command')
config.bind('<Alt-Backspace>', 'rl-backward-kill-word', mode='command')
config.bind('<Alt-D>', 'rl-kill-word', mode='command')
config.bind('<Alt-F>', 'rl-forward-word', mode='command')
config.bind('<Ctrl-?>', 'rl-delete-char', mode='command')
config.bind('<Ctrl-A>', 'rl-beginning-of-line', mode='command')
config.bind('<Ctrl-B>', 'rl-backward-char', mode='command')
config.bind('<Ctrl-C>', 'completion-item-yank', mode='command')
config.bind('<Ctrl-D>', 'completion-item-del', mode='command')
config.bind('<Ctrl-E>', 'rl-end-of-line', mode='command')
config.bind('<Ctrl-F>', 'rl-forward-char', mode='command')
config.bind('<Ctrl-H>', 'rl-backward-delete-char', mode='command')
config.bind('<Ctrl-K>', 'rl-kill-line', mode='command')
config.bind('<Ctrl-N>', 'command-history-next', mode='command')
config.bind('<Ctrl-P>', 'command-history-prev', mode='command')
config.bind('<Ctrl-Return>', 'command-accept --rapid', mode='command')
config.bind('<Ctrl-Shift-C>', 'completion-item-yank --sel', mode='command')
config.bind('<Ctrl-Shift-Tab>', 'completion-item-focus prev-category', mode='command')
config.bind('<Ctrl-Shift-W>', 'rl-filename-rubout', mode='command')
config.bind('<Ctrl-Tab>', 'completion-item-focus next-category', mode='command')
config.bind('<Ctrl-U>', 'rl-unix-line-discard', mode='command')
config.bind('<Ctrl-W>', 'rl-rubout " "', mode='command')
config.bind('<Ctrl-Y>', 'rl-yank', mode='command')
config.bind('<Down>', 'completion-item-focus --history next', mode='command')
config.bind('<Escape>', 'mode-leave', mode='command')
config.bind('<PgDown>', 'completion-item-focus next-page', mode='command')
config.bind('<PgUp>', 'completion-item-focus prev-page', mode='command')
config.bind('<Return>', 'command-accept', mode='command')
config.bind('<Shift-Delete>', 'completion-item-del', mode='command')
config.bind('<Shift-Tab>', 'completion-item-focus prev', mode='command')
config.bind('<Tab>', 'completion-item-focus next', mode='command')
config.bind('<Up>', 'completion-item-focus --history prev', mode='command')
#}}}

#{{{ Bindings for hint mode
config.bind('<Escape>', 'mode-leave', mode='hint')
config.bind('<Return>', 'hint-follow', mode='hint')
#}}}

#{{{ Bindings for insert mode
config.bind('<Ctrl-E>', 'edit-text', mode='insert')
config.bind('<Escape>', 'mode-leave', mode='insert')
config.bind('<Shift-Escape>', 'fake-key <Escape>', mode='insert')
config.bind('<Shift-Ins>', 'insert-text -- {primary}', mode='insert')
#}}}

#{{{ Bindings for passthrough mode
config.bind('<Shift-Escape>', 'mode-leave', mode='passthrough')
#}}}

#{{{ Bindings for prompt mode
config.bind('<Alt-B>', 'rl-backward-word', mode='prompt')
config.bind('<Alt-Backspace>', 'rl-backward-kill-word', mode='prompt')
config.bind('<Alt-D>', 'rl-kill-word', mode='prompt')
config.bind('<Alt-F>', 'rl-forward-word', mode='prompt')
config.bind('<Alt-Shift-Y>', 'prompt-yank --sel', mode='prompt')
config.bind('<Alt-Y>', 'prompt-yank', mode='prompt')
config.bind('<Ctrl-?>', 'rl-delete-char', mode='prompt')
config.bind('<Ctrl-A>', 'rl-beginning-of-line', mode='prompt')
config.bind('<Ctrl-B>', 'rl-backward-char', mode='prompt')
config.bind('<Ctrl-E>', 'rl-end-of-line', mode='prompt')
config.bind('<Ctrl-F>', 'rl-forward-char', mode='prompt')
config.bind('<Ctrl-H>', 'rl-backward-delete-char', mode='prompt')
config.bind('<Ctrl-K>', 'rl-kill-line', mode='prompt')
config.bind('<Ctrl-P>', 'prompt-open-download --pdfjs', mode='prompt')
config.bind('<Ctrl-Shift-W>', 'rl-filename-rubout', mode='prompt')
config.bind('<Ctrl-U>', 'rl-unix-line-discard', mode='prompt')
config.bind('<Ctrl-W>', 'rl-rubout " "', mode='prompt')
config.bind('<Ctrl-X>', 'prompt-open-download', mode='prompt')
config.bind('<Ctrl-Y>', 'rl-yank', mode='prompt')
config.bind('<Down>', 'prompt-item-focus next', mode='prompt')
config.bind('<Escape>', 'mode-leave', mode='prompt')
config.bind('<Return>', 'prompt-accept', mode='prompt')
config.bind('<Shift-Tab>', 'prompt-item-focus prev', mode='prompt')
config.bind('<Tab>', 'prompt-item-focus next', mode='prompt')
config.bind('<Up>', 'prompt-item-focus prev', mode='prompt')
#}}}

#{{{ Bindings for register mode
config.bind('<Escape>', 'mode-leave', mode='register')
#}}}

#{{{ Bindings for yesno mode
config.bind('<Alt-Shift-Y>', 'prompt-yank --sel', mode='yesno')
config.bind('<Alt-Y>', 'prompt-yank', mode='yesno')
config.bind('<Escape>', 'mode-leave', mode='yesno')
config.bind('<Return>', 'prompt-accept', mode='yesno')
config.bind('N', 'prompt-accept --save no', mode='yesno')
config.bind('Y', 'prompt-accept --save yes', mode='yesno')
config.bind('n', 'prompt-accept no', mode='yesno')
config.bind('y', 'prompt-accept yes', mode='yesno')
#}}}

#}}}
