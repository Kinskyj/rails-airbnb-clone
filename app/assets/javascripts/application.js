//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .

const search = document.getElementById('search-box');
const searchbtn = document.getElementById("search-btn");

search.addEventListener('keyup',function(e) {
  e.preventDefault();
   if (event.keyCode == 13) {
        searchbtn.click();
    }
});

searchbtn.addEventListener('click',function(e) {
  e.preventDefault();
        const input = document.getElementById('search-box').value;
        window.location.href = 'http://localhost:3000/services';

});


//Pour filtre
// const input = document.getElementById('text-input').value;
// window.location.href = 'http://localhost:3000/services';
// window.location.href = 'http://mywebsite.com/'+input;
