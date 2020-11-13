$(document).on("turbolinks:load",function(){
  $(".request-book").on("click", function(e){
    timedAlert();
    e.preventDefault();
    setTimeout(createPetition, 2000);
  })
});
function createPetition(){
  $.ajax({
    type: 'POST',
    url: '/books',
    data: {
      book: {
        title: $('input[name="book[title]"').val(),
        status: "requested"
      }
    },
    success: function(result) {
      showSuccessAlert();
    },
    error:function(){
      showErrorAlert();
    }
  });
}
function timedAlert(){
  Swal.fire({
    title: 'Procesando tu solicitud',
    timer: 2000,
    timerProgressBar: true,
    showConfirmButton: false
  });
}
function showSuccessAlert(){
  Swal.fire({
    icon: 'success',
    title: 'Su solicitud ha sido procesada',
    showConfirmButton: false,
    timer: 1500
  })
}
function showErrorAlert(){
  Swal.fire({
    icon: 'error',
    title: 'Hubo un error procesando su solicitud',
    showConfirmButton: false,
    timer: 1500
  })
}