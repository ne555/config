function remove_element(get_element){
  let element;
  do {
    element = get_element();
    for (let i = 0; i < element.length; i++) {
      let frameid = element[i];
      frameid.parentNode.removeChild(frameid);
    }
  } while (element && element.length > 0);
}

function remove_class(class_name){
  remove_element(() => {
    return document.getElementsByClassName(class_name);
  });
}

function remove_tag(tag_name){
  remove_element(() => {
    return document.getElementsByTagName(tag_name);
  });
}

remove_class('RnEpo _Yhr4 ')
remove_class('ml-webforms-popup-overlay')
remove_tag('iframe')
remove_element(() => {
    return document.querySelectorAll('div[role="dialog"]')
})
document.body.style.overflow="auto";
