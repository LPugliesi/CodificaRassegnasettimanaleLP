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