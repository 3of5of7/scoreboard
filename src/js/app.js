App = {
  web3Provider: null,
  contracts: {},

  init: function() {
    // Load users.
     $.getJSON("users.json", function(data) {
      var user_data = '';
      
      $.each(data, function(key, value){
        user_data += '<tr>';
        user_data += '<td>'+value.id+'</td>';
        user_data += '<td>'+value.name+'</td>';
        user_data += '<td>'+value.points+'</td>';
        user_data += '</tr>';
      });
      $('#user_table').append(user_data);
    });

    return App.initWeb3();
  },

  initWeb3: function() {
    /*
     * Replace me...
     */

    return App.initContract();
  },

  initContract: function() {
    /*
     * Replace me...
     */

    return App.bindEvents();
  },

  bindEvents: function() {
    $(document).on('click', '.btn-addpoints', App.handlePoints);
  },

  handlePoints: function() {
    event.preventDefault();

    var userId = parseInt($(event.target).data('id'));

    /*
     * Replace me...
     */
  },

  givePoints: function(id, amount) {
    /*
     * Replace me...
     */
  }

};

$(function() {
  $(window).load(function() {
    App.init();
  });
});
