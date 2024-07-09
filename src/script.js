$(document).ready(function () { 

  // bottone persone
  $("#persone").click(function () {
    if ($('span.persName').hasClass("highlight_p")) {
        $('span.persName').removeClass("highlight_p");
    } else {
        $('span.persName').addClass("highlight_p");
    }
  });

  // bottone epithet
  $("#epithet").click(function () {
    if ($('span.addName').hasClass("highlight_ep")) {
        $('span.addName').removeClass("highlight_ep");
    } else {
        $('span.addName').addClass("highlight_ep");
    }
  });

  // bottone luoghi
  $("#luoghi").click(function () {
    if ($('span.settlement').hasClass("highlight_l")) {
        $('span.settlement').removeClass("highlight_l");
    } else {
        $('span.settlement').addClass("highlight_l");
    }
  });

  // bottone date
  $("#date").click(function () {
    if ($('span.date').hasClass("highlight_d")) {
        $('span.date').removeClass("highlight_d");
    } else {
        $('span.date').addClass("highlight_d");
    }
  });

  // bottone organizzazioni
  $("#organizzazioni").click(function () {
    if ($('span.orgName').hasClass("highlight_o")) {
        $('span.orgName').removeClass("highlight_o");
    } else {
        $('span.orgName').addClass("highlight_o");
    }
  });

  // bottone citazioni
  $("#citazioni").click(function () {
    if ($('span.quote').hasClass("highlight_c")) {
        $('span.quote').removeClass("highlight_c");
    } else {
        $('span.quote').addClass("highlight_c");
    }
  });   
  
  // bottone opere
  $("#opere").click(function () {
    if ($('span.bibl').hasClass("highlight_op")) {
        $('span.bibl').removeClass("highlight_op");
    } else {
        $('span.bibl').addClass("highlight_op");
    }
  });

  // bottone casa editrice
  $("#casaeditrice").click(function () {
    if ($('span.publisher').hasClass("highlight_ce")) {
        $('span.publisher').removeClass("highlight_ce");
    } else {
        $('span.publisher').addClass("highlight_ce");
    }
  });   
 
  // bottone correnti letterarie
  $("#correntiletterarie").click(function () {
    if ($('span.term').hasClass("highlight_cl")) {
        $('span.term').removeClass("highlight_cl");
    } else {
        $('span.term').addClass("highlight_cl");
    }
  });

  // bottone verbum
  $("#verbum").click(function () {
    if ($('span.emph').hasClass("highlight_vr")) {
        $('span.emph').removeClass("highlight_vr");
    } else {
        $('span.emph').addClass("highlight_vr");
    }
  });

  // bottone lingue straniere
  $("#foreign").click(function () {
    if ($('span.foreign').hasClass("highlight_f")) {
        $('span.foreign').removeClass("highlight_f");
    } else {
        $('span.foreign').addClass("highlight_f");
    }
  });  
 
  // bottone correzioni
  $("#correzioni").click(function () {
    var $spanCorretto = $('span.corretto');
    var $spanSbagliato = $('span.nascosto');

    if ($spanCorretto.hasClass("nascosto")) {
        // Se la parola corretta è nascosta, la mostriamo e nascondiamo la parola sbagliata
        $spanCorretto.removeClass("nascosto").addClass("corretto");
        $spanSbagliato.addClass("nascosto").removeClass("corretto");
    } else {
        // Altrimenti, nascondiamo la parola corretta e mostriamo la parola sbagliata
        $spanCorretto.addClass("nascosto").removeClass("corretto");
        $spanSbagliato.removeClass("nascosto").addClass("corretto");
    }
  });

  $("area").hover(
    function() {
      var idArea = $(this).attr("title").replace("#", "");
      var $zoneElement = $("#" + idArea);
      if ($zoneElement.length) {
        $zoneElement.data("prevFontWeight", $zoneElement.css("font-weight"));
        $zoneElement.css("font-weight", "bold");
      }
    },
    function() {
      var idArea = $(this).attr("title").replace("#", "");
      var $zoneElement = $("#" + idArea);
      if ($zoneElement.length) {
        $zoneElement.css("font-weight", $zoneElement.data("prevFontWeight"));
      }
    }
  );
  
});