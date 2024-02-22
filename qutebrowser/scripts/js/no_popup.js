function remove_element(get_element) {
    let element;
    do {
        element = get_element();
        for (let i = 0; i < element.length; i++) {
            let frameid = element[i];
            frameid.parentNode.removeChild(frameid);
        }
    } while (element && element.length > 0);
}

function remove_class(class_name) {
    remove_element(() => {
        return document.getElementsByClassName(class_name);
    });
}

function remove_tag(tag_name) {
    remove_element(() => {
        return document.getElementsByTagName(tag_name);
    });
}

function find_fixed() {
    fixed = [];
    document.querySelectorAll('div').forEach(
        function (el) {
            if (window.getComputedStyle(el).position === 'fixed') {
                fixed.push(el);
            }
        }
    );
    return fixed;
}

function remove_fixed() {
    remove_element(() => {
        fixed = [];
        document.querySelectorAll('div').forEach(
            function (el) {
                if (window.getComputedStyle(el).position === 'fixed') {
                    fixed.push(el);
                }
            }
        );
        return fixed;
    });
}

remove_fixed();
remove_class('js-consent-banner');
remove_class('RnEpo _Yhr4 ');
remove_class('ml-webforms-popup-overlay');
remove_class('modal-container');
remove_class('haas-cookie-dialog');
remove_class('fEy1Z2XT');
remove_class('aviso-cookies');
remove_tag('iframe');
remove_element(() => {
    with_id = document.getElementById('haas-container');
    if (with_id != null)
        return [with_id];
    return [];
});
remove_element(() => {
    return document.querySelectorAll('div[role="dialog"]');
});
remove_element(() => {
    return document.querySelectorAll('div[data-object="overlay"]');
});
remove_element(() => {
    return document.querySelectorAll('div[data-object="modal"]');
});
document.body.style.overflow = "auto";
