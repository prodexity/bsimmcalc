function BsimmViewModel() {
    var self = this;

    self.currentPage = ko.observable(window.location.pathname);

    self.showPage = function(vm, ev) {
      var ppath = ev.target.dataset.practicepath;
      var bsimmcontent = $('#bsimmcontent');
      bsimmcontent.load(ppath);
      /*
      // this doesn't help:
      ko.cleanNode(bsimmcontent[0]);
      ko.applyBindings(vm, bsimmcontent[0]);
      */
      history.replaceState(null, null, ppath);
      self.currentPage(ppath);
    }

    self.setYesNoBtnColor = function(vm, ev) {
      // this is a hack because there is no viewmodel for answers as answer pages are partial htmls loaded via ajax
      var btn = $(ev.target);
      btn.removeClass('btn-default');
      var inp = $("input[type='radio']", btn);
      $('div.btn', btn.parent()).removeClass('btn-success').removeClass('btn-danger').addClass('btn-default');
      if (inp.val() == 'yes') btn.addClass('btn-success');
      if (inp.val() == 'no') btn.addClass('btn-danger');
      return true;
    };
};

$(function() {
  ko.applyBindings(new BsimmViewModel());
});

