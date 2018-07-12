(function($) {
  "use strict";      
      /*---------------------------------------------------
      ----------------------Select Picker Animation------------------
      -----------------------------------------------------
      */
      $(window).on('load', function () {

      		$('.selectpicker').selectpicker({
      			'selectedText': 'cat'
      		});

      		// $('.selectpicker').selectpicker('hide');
      	});
      	
      /*---------------------------------------------------
      ----------------------WOW Animation------------------
      -----------------------------------------------------
      */
      new WOW().init();

      /*---------------------------------------------------
      ----------------------Pre-Loder Animation------------------
      -----------------------------------------------------
      */
      jQuery(window).load(function(){
          jQuery("#preloader").delay(500).fadeOut(1000);
      		jQuery(".preload-gif").addClass('fadeOutUp');
          
      });


      /* product remove */
      function removeDummy1() {
             var elem1 = document.getElementById('dummy1');
             elem1.parentNode.removeChild(elem1);
            }

      function removeDummy2() {
             var elem2 = document.getElementById('dummy2');
             elem2.parentNode.removeChild(elem2);
            }
      	   
      function removeDummy3() {
             var elem3 = document.getElementById('dummy3');
             elem3.parentNode.removeChild(elem3);
            }

})(jQuery);	   


