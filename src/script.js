// funzione per gestione dimensione immagine interattiva
/**/function gestoreRidimensiona() {
/**/   try {
/**/     var dimensioneAttuale = nodoDiscografia.width;
/**/      var rapporto = dimensioneAttuale/dimensioneFoto;
/**/     for (var i = 0; i < nodiArea.length; i++) {
/**/       for (var j = 0; j < coordinate[i].length; j++) {
/**/          coordinate[i][j] *= rapporto;
/**/        }
/**/        nodiArea[i].coords = coordinate[i].join(',');
/**/     }
/**/     dimensioneFoto = dimensioneAttuale;
/**/   } catch (e) {
/**/      alert("gestoreRidimensiona " + e);
/**/   }
/**/}

$(document).ready(function () { 

    $("#persone").click(function () {
      $("persName").addClass("highlight_p");
    });

    $("#epithet").click(function () {
      $("addName").addClass("highlight_ep");
    });

    $("#luoghi").click(function () {
      $("settlement").addClass("highlight_l");
    });    

    $("#date").click(function () {
      $("date").addClass("highlight_d");
    });
  
    $("#organizzazioni").click(function () {
      $("orgName").addClass("highlight_o");
    }); 

    $("#citazioni").click(function () {
      $("quote").addClass("highlight_c");
    });

    $("#opere").click(function () {
      $("bibl").addClass("highlight_op");
    }); 

    $("#casaeditrice").click(function () {
      $("publisher").addClass("highlight_ce");
    }); 

    $("#correntiletterarie").click(function () {
      $("term").addClass("highlight_cl");
    }); 

    $("#verbum").click(function () {
      $("emph").addClass("highlight_vr");
    });   

    $("#foreign").click(function () {
      $("foreign").addClass("highlight_f");
    });  



  });