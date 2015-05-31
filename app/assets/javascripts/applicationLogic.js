$( document ).ready(function() {
  attachEvents();
});

function attachEvents() {
  $('#apply').click(revealApplication);
  //$('#save-application').click(saveApplication);
}

function revealApplication(){
  $('#application').slideDown();
  scrollTo("#application", 1000);
}

function scrollTo(selector, animationTime) {
  $('html, body').animate({
        scrollTop: $(selector).offset().top
    }, animationTime);
}

function saveApplication() {
  var formData = $('#application-form').serializeArray()

  validateName(formData['name']);
  validateEmail(formData['email']);
  validateGenderId(formData['genderId']);
  validateSchool(formData['schoolName']);
}

function validateName(name) {
  if(!name){
    //Example of altering the DOM to show user where the error is
    //In practice we'll probably use .addClass() to add an 'error' class
    //which we'd then define and style in scss
    $('#name').append('*');
    $('#name').class("invalid");
    //Creates a pop-up notifying the user of the error
    alert('name is not valid');
  }
}

function validateEmail(email) {
    if(!email){
        $('#email').append('*');
        $('#email').class("invalid");
        alert('email is not valid');
    }
}

function validateGenderId(genderId) {
    if(!genderId){
        $('#genderId').append('*');
        $('#genderId').class("invalid");
        alert('gender is not valid');
    }
}

function validateSchool(schoolName) {
    if(!schoolName){
        $('#schoolName').append('*');
        $('#schoolName').class("invalid");
        alert('school name is not valid');
    }
}
