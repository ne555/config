#!javascript
//<youtube_html5___SCRIPT
extensions.load("youtube_html5", {
//<youtube_html5___CONFIG
  // Command for an external video player 
  externalPlayer : "mplayer %u",

  // Shortcut to launch the external player
  externalShortcut : "eym",

  // Shortcut for the external player
  externalQuality : "1080p",

  // Shortcut for toggling pause/play, 
  togglePlay    : "yp",

  // Seek to position, "37ys" will seek to 37% of the video, :yt_seek 3:55 will
  // seek to position 3:55 default: "ys"
  seek          : "ys",

  // Seek forward, e.g. 7yf will seek 7*seekStep forward, :yt_seek_forward 1:37
  // will seek forward 1 minute and 37 seconds default: "yf"
  seekForward   : "yf",

  // Seek backward, e.g. 7yb will seek 7*seekStep forward, :yt_seek_backward 1:37
  // will seek backward 1 minute and 37 seconds default: "yb"
  seekBackward  : "yb",

  // Seekstep in seconds
  seekStep      : 5,

  // Whether to automatically start the video, 
  autoplay : false, 

  // Whether to show controls, 
  controls : true,

  // The default quality, possible qualities are 1080p, 720p, 480p, 360p, 240p
  // If the quality isn't available the next lower quality will be chosen
  defaultQuality : "480p",

  // Array of qualities that should not be offered, 
  excludeQuality : [  ],
  
  // The preferred video format, possible formats are x-flv, webm, mp4, 3gpp If
  // the format isn't available the first available will be chosen.
  preferredFormat : "",

  // Array of formats that should be excluded
  excludeFormat : [ ],
  
  foregroundActive : "#008000",
  foregroundColor : "#fff", 
  backgroundColor : "#000", 
  linkColor : "#999", 

  backgroundDisabled : "#555", 
  foregroundDisabled : "#aaa", 
  separator : "",
  font : "10px helvetica",
  linkFont : "bold 10px helvetica",

  barHeight : 14
//>youtube_html5___CONFIG
});
//>youtube_html5___SCRIPT
