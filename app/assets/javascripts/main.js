//wait for window to load before getting resources
document.addEventListener("turbolinks:load", function(){
  // nav bar JS
  let mainNav = document.getElementById('js-menu');
  let navBarToggle = document.getElementById('js-navbar-toggle');

  navBarToggle.addEventListener('click', function () {
    mainNav.classList.toggle('active');
  });

  //resort map modal
  // Get the modal
  let modal = document.getElementById('myModal');

  // image inside modal, using alt text as caption
  let img = document.getElementById('myImg');
  let modalImg = document.getElementById("img01");
  let captionText = document.getElementById("caption");
  if (img) {
    img.onclick = function(){
      modal.style.display = "block";
      modalImg.src = this.src;
      captionText.innerHTML = this.alt;
    }
  }

  // close
  let span = document.getElementsByClassName("close")[0];

  // close
  if (span) {
    span.onclick = function() {
      modal.style.display = "none";
    }
  }
})
