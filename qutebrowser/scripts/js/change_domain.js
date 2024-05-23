function old_days(){
  let uri = window.location.href;
  let result = uri.replace(/www/, 'old');
  window.location.replace(result); //don't appear on history
  return 0;
}

function change_domain(url, old, new_){
  return url.replace(old, new_);
}

function remove_ssl(url){
  let uri = url;
  let result = uri.replace(/^https/, 'http');
  return result;
}

function no_youtube(){
  let result = change_domain(
      window.location.href,
      'www.youtube.com',
      'inv.zzls.xyz');
      //'yewtu.be');
  window.location.replace(result) //don't appear on history
  return 0;
}

function no_medium(){
  let result = change_domain(
      window.location.href,
      'medium.com',
      'scribe.rip');
      //'yewtu.be');
  window.location.replace(result) //don't appear on history
  return 0;
}

let url = window.location.href;
if (url.search('www.reddit') != -1) {
  old_days();
}
else if (url.search('youtube') != -1) {
  no_youtube();
}
else if (url.search('medium') != -1) {
  no_medium();
}
