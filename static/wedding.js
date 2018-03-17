function un64 (id, prop) {
    var node = document.getElementById(id);
    node[prop] = atob(node.getAttribute('data-'+prop+'-64'));
}
