$(document).ready(function () {

  // Funzione per bottone persone
  $("#persone").click(function () {
    if ($('span.persName').hasClass("highlight_p")) {
        $('span.persName').removeClass("highlight_p");
    } else {
        $('span.persName').addClass("highlight_p");
    }
  });

  // Funzione per bottone epithet
  $("#epithet").click(function () {
    if ($('span.addName').hasClass("highlight_ep")) {
        $('span.addName').removeClass("highlight_ep");
    } else {
        $('span.addName').addClass("highlight_ep");
    }
  });

  // Funzione per bottone luoghi
  $("#luoghi").click(function () {
    if ($('span.settlement').hasClass("highlight_l")) {
        $('span.settlement').removeClass("highlight_l");
    } else {
        $('span.settlement').addClass("highlight_l");
    }
  });

  // Funzione per bottone date
  $("#date").click(function () {
    if ($('span.date').hasClass("highlight_d")) {
        $('span.date').removeClass("highlight_d");
    } else {
        $('span.date').addClass("highlight_d");
    }
  });

  // Funzione per bottone organizzazioni
  $("#organizzazioni").click(function () {
    if ($('span.orgName').hasClass("highlight_o")) {
        $('span.orgName').removeClass("highlight_o");
    } else {
        $('span.orgName').addClass("highlight_o");
    }
  });

  // Funzione per bottone citazioni
  $("#citazioni").click(function () {
    if ($('span.quote').hasClass("highlight_c")) {
        $('span.quote').removeClass("highlight_c");
    } else {
        $('span.quote').addClass("highlight_c");
    }
  });   
  
  // Funzione per bottone opere
  $("#opere").click(function () {
    if ($('span.bibl').hasClass("highlight_op")) {
        $('span.bibl').removeClass("highlight_op");
    } else {
        $('span.bibl').addClass("highlight_op");
    }
  });

  // Funzione per bottone casa editrice
  $("#casaeditrice").click(function () {
    if ($('span.publisher').hasClass("highlight_ce")) {
        $('span.publisher').removeClass("highlight_ce");
    } else {
        $('span.publisher').addClass("highlight_ce");
    }
  });   
 
  // Funzione per bottone correnti letterarie
  $("#correntiletterarie").click(function () {
    if ($('span.term').hasClass("highlight_cl")) {
        $('span.term').removeClass("highlight_cl");
    } else {
        $('span.term').addClass("highlight_cl");
    }
  });

  // Funzione per bottone verbum
  $("#verbum").click(function () {
    if ($('span.emph').hasClass("highlight_vr")) {
        $('span.emph').removeClass("highlight_vr");
    } else {
        $('span.emph').addClass("highlight_vr");
    }
  });

  // Funzione per bottone lingue straniere
  $("#foreign").click(function () {
    if ($('span.foreign').hasClass("highlight_f")) {
        $('span.foreign').removeClass("highlight_f");
    } else {
        $('span.foreign').addClass("highlight_f");
    }
  });  
 
  // Funzione per la gestione delle correzioni
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

  // Funzione per la gestione del hover sulle immagini per il grassetto sul testo collegato ad esso
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