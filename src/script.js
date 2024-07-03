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

    // $("#correzioni").click(function () {
    //   $("sicc").addClass("highlight_corr");
    // });

  });