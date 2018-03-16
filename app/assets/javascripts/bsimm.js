function BsimmViewModel() {
    var self = this;

    self.currentPage = ko.observable(window.location.pathname);

    self.showPage = function(vm, ev) {
      var ppath = ev.target.dataset.practicepath;
      $('#bsimmcontent').load(ppath);
      history.replaceState(null, null, ppath);
      self.currentPage(ppath);
    }

};

$(function() {
  ko.applyBindings(new BsimmViewModel());
});
