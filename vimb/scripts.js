/* See COPYING file for copyright, license and warranty details. */

if(window.content && window.content.document && window.content.document.simplyread_original === undefined) window.content.document.simplyread_original = false;

function simplyread(nostyle, nolinks) {
  /* count the number of <p> tags that are direct children of parenttag */
  function count_p(parenttag) {
    let n = 0;
    let c = parenttag.childNodes;
    for (let i = 0; i < c.length; i++) {
      if (c[i].tagName == "p" || c[i].tagName == "P")
        n++;
    }
    return n;
  }

  let doc;
  doc = (document.body === undefined)
    ? window.content.document : document;

  /* if simplyread_original is set, then the simplyread version is currently active,
   * so switch to the simplyread_original html */
  if (doc.simplyread_original) {
    doc.body.innerHTML = doc.simplyread_original;
    for (let i = 0; i < doc.styleSheets.length; i++)
      doc.styleSheets[i].disabled = false;
    doc.simplyread_original = false
    return 0;
  }

  doc.simplyread_original = doc.body.innerHTML;
  doc.body.innerHTML = doc.body.innerHTML.replace(/<br[^>]*>\s*<br[^>]*>/g, "<p>");

  let biggest_num = 0;
  let biggest_tag;

  /* search for tag with most direct children <p> tags */
  let t = doc.getElementsByTagName("*");
  for (let i = 0; i < t.length; i++) {
    let p_num = count_p(t[i]);
    if (p_num > biggest_num) {
      biggest_num = p_num;
      biggest_tag = t[i];
    }
  }

  if (biggest_num == 0)
    return 1;

  /* save and sanitise content of chosen tag */
  let fresh = doc.createElement("div");
  fresh.innerHTML = biggest_tag.innerHTML;
  fresh.innerHTML = fresh.innerHTML.replace(/<\/?font[^>]*>/g, "");
  fresh.innerHTML = fresh.innerHTML.replace(/style="[^"]*"/g, "");
  if (nolinks)
    fresh.innerHTML = fresh.innerHTML.replace(/<\/?a[^>]*>/g, "");
  fresh.innerHTML = fresh.innerHTML.replace(/<\/?span[^>]*>/g, "");
  fresh.innerHTML = fresh.innerHTML.replace(/<style[^>]*>/g, "<style media=\"aural\">"); /* ensures contents of style tag are ignored */

  for (let i = 0; i < doc.styleSheets.length; i++)
    doc.styleSheets[i].disabled = true;

  srstyle =
    "p{margin:0ex auto;} h1,h2,h3,h4{font-weight:normal; font-family:sans-serif}" +
    "p+p{text-indent:2em;} body{background:#cccccc none}" +
    "img{display:block; max-width: 32em; padding:1em; margin: auto}" +
    "h1{text-align:center;text-transform:uppercase}" +
    "div#sr{width:34em; padding:8em; padding-top:2em;" +
    "  background-color:white; margin:auto; line-height:1.4;" +
    "  text-align:left; font-family:serif; hyphens:auto;}";
  /* text-rendering:optimizeLegibility; - someday this will work,
   *   but at present it just ruins justify, so is disabled */

  doc.body.innerHTML =
    "<style type=\"text/css\">" + (nostyle ? "" : srstyle) + "</style>" +
    "<div id=\"sr\">" + "<h1>" + doc.title + "</h1>" + fresh.innerHTML + "</div>";

  /*Download generated HTML*/
  doc.body.innerHTML += "<a download=\"a.html\" href=\'#\' id=\"download_link\">Download generated HTML</a>";
  let html_as_blob = new Blob([doc.body.innerHTML], {type: 'text/plain'});
  download_link.href = URL.createObjectURL(html_as_blob);

  return 0;
}

function disable_css(){
  /*
  let styles = document.querySelectorAll('link[rel=stylesheet],style')
  styles.forEach(element => element.parentNode.removeChild(element));
  */
}

function olddays(){
  //var uri = document.url
  let uri = window.location.href
  let result = uri.replace(/www/, 'old')
  //window.location.href = result
  window.location.replace(result) //don't appear on history
  return 0
}

function change_domain(url, viejo, nuevo){
  let uri = url;
  let result = uri.replace(viejo, nuevo);
  return result;
}

function remove_ssl(url){
  let uri = url;
  let result = uri.replace(/^https/, 'http');
  return result;
}

function no_youtube(){
  let result = change_domain(remove_ssl(window.location.href), 'youtube', 'iteroni');
  window.location.replace(result) //don't appear on history
  return 0;
}

function clean_reddit(){
  /*
  let kill = [
    '#hsts_pixel',
    '.debuginfo',
    '#header',
    '.side',
    '.infobar',
    '.footer-parent',
    '.expando',
    '.expando-button',
    '.likes',
    '.dislikes',
    '.rank',
    '.domain',
    '.entry > .flat-list',
    '.flat-list li:not(:first-child)',
    '.clearleft',
    '.promoted',
    '.promotedlink',
    '.top-matter > .tagline',
    '.thumbnail
  ];
  kill.forEach((x) => {
    $(x).parentNode.removeChild(x);
  });
  */
}

function bypass(){
  let login = document.getElementsByClassName('RnEpo _Yhr4 ');
  //let login = document.querySelector('div[role=presentation]');
  let l = login.length;
  for (let i = 0; i < l; i++){
    let frameid = login[i];
    frameid.parentNode.removeChild(frameid);
  }
}

function bypass2(){
  let login = document.getElementsByClassName("js-consent-banner");
  let l = login.length;
  console.log(login);
  for (let i = 0; i < l; i++){
    let frameid = login[i];
    frameid.parentNode.removeChild(frameid);
  }
}

function desktop(){
  let uri = window.location.href
  let result = uri.replace(/.m./, '.')
  window.location.replace(result) //don't appear on history
  return 0
}
