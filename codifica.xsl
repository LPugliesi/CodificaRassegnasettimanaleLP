<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" />

    <!-- html template -->
    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="stylesheet" type="text/css" href="src/style.css" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script type="text/javascript" src="src/script.js"></script>
                <title>Progetto di Codifica di Testi</title>
            </head>

            <body>
                <div class="header">
                    <img
                        src="https://rassegnasettimanale.animi.it/wp-content/uploads/2019/03/logo_rassegna_new.jpg"
                        alt="La Rassegna Settimanale Logo" />
                </div>
                
                <div class="heading">
                    <h1>
                        <xsl:value-of
                            select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />
                    </h1>
                    <span>
                        <img src="https://upload.wikimedia.org/wikipedia/it/e/e2/Stemma_unipi.svg"
                            alt="Logo Università di Pisa" style="width:80px" />
                    </span>
                    <h3>
                        <xsl:value-of
                            select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:sponsor" />
                    </h3>
                </div>
    
                <div class="container">
                    <p style="color: black;">Informazioni sul Progetto</p>

                    <div class="btns-container">
                        <button class="desc" id="btn-descBibl">Descrizione bibliografica</button>
                        <button class="desc" id="btn-descCod">Descrizione della codifica</button>
                    </div>
                </div>

                <div class="container" id="descBibl">
                    <div class="bgTabella">
                        <div class="containerTabella">
                            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc" />
                        </div>
                    </div>
                </div>

                <div class="container" id="descCod">
                    <div class="bgTabella">
                        <div class="containerTabella">
                            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:encodingDesc" />
                        </div>
                    </div>
                </div>

                <div class="container"><h3>Evidenzia</h3></div>

                <div class="menu">

                    <!-- Bottoni -->
                    <div class="btns-highlight">
                        <button class="highlight yellow" id="person">Persone</button>
                        <button class="highlight rose" id="character">Personaggi</button>
                        <button class="highlight mint" id="bibl">Opere</button>
                        <button class="highlight powder" id="place">Luoghi</button>
                        <button class="highlight purple" id="publisher">Casa editrice</button>
                        <button class="highlight coral" id="date">Date</button>
                        <button class="highlight crimson" id="verbum">Verbum</button>
                        <button class="highlight orange" id="literary">Correnti letterarie</button>
                        <button class="highlight lilac" id="foreign">Lingua straniera</button>
                        <button class="highlight jade" id="cit">Citazioni</button>
                        <button class="highlight blue" id="org">Organizzazioni</button>
                        <button class="highlight applegreen" id="religion">Religioni</button>
                    </div>

                    <div class="btns-show" style="width:600px;">
                        <button class="show lemon" id="expan">Espansioni</button>
                        <button class="show marine" id="reg">Regolarizzazioni</button>
                        <button class="show vanilla" id="ex">Aggiunte</button>
                        <button class="show sand" id="corr">Correzioni</button>
                    </div>
                </div>

                <!-- Testo -->

            </body>

            <footer>
                <p>
                    <span>
                        <xsl:value-of
                        select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp" />&#160;
                    </span>
                    <span><xsl:value-of
                        select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[1]" /></span>&#160;e&#160; 
                        <span><xsl:value-of
                            select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[2]" /></span>
                </p>
                <p>Repository <a target="_blank" href="https://github.com/LPugliesi/CodificaRassegnasettimanaleLP">GitHub</a></p>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- 
java -jar "./tools/SaxonHE10-3J/saxon-he-10.3.jar" -s:codifica.xml -xsl:codifica.xsl -o:progetto.html 
-->