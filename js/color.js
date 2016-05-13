
  var colors = ['rgba(34, 170, 249, 0.75)','rgba(231, 41, 50, 0.75)','rgba(249, 157, 34, 0.75)','rgba(27, 159, 61, 0.75)'];

  var randomKuler = colors[Math.floor(Math.random() * colors.length)];



  document.getElementsByClassName('header')[0].style.backgroundColor = randomKuler;

  document.getElementsByClassName('nav-block')[0].style.borderColor = randomKuler;

  // document.getElementsByClassName('icon')[0].style.color = randomKuler;


  $(".header-button,.nav-list li a").hover(
    function() {
    $(this).css("color",randomKuler)
    },
    function() {
    $(this).css("color",'#fff')
    }
  );

  $(".nav-list li a").hover(
    function() {
    $(this).css("color",randomKuler)
    },
    function() {
    $(this).css("color",'#353535')
    }
  );

  $(".icon-social").hover(
    function() {
    $(this).css("background-color",randomKuler)
    $(this).css("border-color",randomKuler)
    $(this).css("color", "white")
    },
    function() {
    $(this).css("background-color",'transparent')
    $(this).css("border-color", "grey")
    $(this).css("color", "grey")
    }
  );

  $("#services .icon").css("color",randomKuler,"opacity",".5");
  $("h4").css("color",randomKuler);
  $("#action-block").css("background-color",randomKuler);



// function randomColor() {
//   // get random color
//
//   var colors = ['#FAB354', '#54BDFA', '#1D75AD'];
//   var randomNumber = Math.floor((Math.random() * colors.length) + 1);
//   var randomColor = colors[randomNumber];
//
//   // create style tag
//   var styleElem = document.createElement('style');
//   styleElem.type = 'text/css';
//
//   // create css
//   var css = ".header{background-color:" + randomColor + ";}";
//
//   // put css inside style tag
//   styleElem.styleSheet.cssText = css;
//
//   // append style tag to <head>
//   var head = document.getElementsByTagName('head')[0] ;
//   head.appendChild(styleElem);
// }
