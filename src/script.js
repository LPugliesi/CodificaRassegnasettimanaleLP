$(document).ready(function () { 


  // bottone persone
  $("#persone").click(function () {
    if ($("persName").hasClass("highlight_p")) {
        $("persName").removeClass("highlight_p");
    } else {
        $("persName").addClass("highlight_p");
    }
  });

  // bottone epithet
  $("#epithet").click(function () {
    if ($("addName").hasClass("highlight_ep")) {
        $("addName").removeClass("highlight_ep");
    } else {
        $("addName").addClass("highlight_ep");
    }
  });

  // bottone luoghi
  $("#luoghi").click(function () {
    if ($("settlement").hasClass("highlight_l")) {
        $("settlement").removeClass("highlight_l");
    } else {
        $("settlement").addClass("highlight_l");
    }
  });

  // bottone date
  $("#date").click(function () {
    if ($("date").hasClass("highlight_d")) {
        $("date").removeClass("highlight_d");
    } else {
        $("date").addClass("highlight_d");
    }
  });

  // bottone organizzazioni
  $("#organizzazioni").click(function () {
    if ($("orgName").hasClass("highlight_o")) {
        $("orgName").removeClass("highlight_o");
    } else {
        $("orgName").addClass("highlight_o");
    }
  });

  // bottone citazioni
  $("#citazioni").click(function () {
    if ($("quote").hasClass("highlight_c")) {
        $("quote").removeClass("highlight_c");
    } else {
        $("quote").addClass("highlight_c");
    }
  });   
  
  // bottone opere
  $("#opere").click(function () {
    if ($("bibl").hasClass("highlight_op")) {
        $("bibl").removeClass("highlight_op");
    } else {
        $("bibl").addClass("highlight_op");
    }
  });

  // bottone casa editrice
  $("#casaeditrice").click(function () {
    if ($("publisher").hasClass("highlight_ce")) {
        $("publisher").removeClass("highlight_ce");
    } else {
        $("publisher").addClass("highlight_ce");
    }
  });   
 
  // bottone correnti letterarie
  $("#correntiletterarie").click(function () {
    if ($("term").hasClass("highlight_cl")) {
        $("term").removeClass("highlight_cl");
    } else {
        $("term").addClass("highlight_cl");
    }
  });

  // bottone verbum
  $("#verbum").click(function () {
    if ($("emph").hasClass("highlight_vr")) {
        $("emph").removeClass("highlight_vr");
    } else {
        $("emph").addClass("highlight_vr");
    }
  });

  // bottone lingue straniere
  $("#foreign").click(function () {
    if ($("foreign").hasClass("highlight_f")) {
        $("foreign").removeClass("highlight_f");
    } else {
        $("foreign").addClass("highlight_f");
    }
  });  
 
    // bottone lingue correzioni
  // $("#correzioni").click(function () {
  //   if ($(document.querySelectorAll('span.nascosto')).hasClass("nascosto")) {
  //       $(document.querySelectorAll('span.nascosto')).removeClass("nascosto").addClass("sbagliato");
  //   } else {
  //       $(document.querySelectorAll('span.nascosto')).addClass("nascosto");
  //   }
  // });

  $("#correzioni").click(function () {
    var $spanCorretto = $('span.spanCorretto');
    var $spanSbagliato = $('span.spanSbagliato');

    if ($spanCorretto.hasClass("corretto")) {
        // Se spanCorretto è nascosto, lo mostriamo e nascondiamo spanSbagliato
        $spanCorretto.removeClass("nascosto").addClass("corretto");
        $spanSbagliato.addClass("nascosto").removeClass("sbagliato");
    } else {
        // Altrimenti, nascondiamo spanCorretto e mostriamo spanSbagliato
        $spanCorretto.addClass("nascosto").removeClass("corretto");
        $spanSbagliato.removeClass("nascosto").addClass("sbagliato");
    }
});


});