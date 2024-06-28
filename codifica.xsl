<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Progetto di Codifica di Testi</title>
                <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                <script src="./src/script.js"></script>
                <link href="./src/style.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <header>
                    <nav>
                        <div class="navbar">
                            <a class="nameproject">Codifica di Testi</a>
                            <a href="#">Home</a>
                            <div class="dropdown">
                                <button class="dropbtn">Pagine
                                    <i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="#">Pagina 1</a>
                                    <a href="#">Pagina 2</a>
                                    <a href="#">Pagina 3</a>
                                    <a href="#">Pagina 4</a>
                                    <a href="#">Pagina 5</a>
                                    <a href="#">Pagina 6</a>
                                </div>
                            </div>
                            <a href="#about">About</a>
                        </div>
                    </nav>

                </header>

                    <div class="tit">
                        <h1><xsl:apply-templates select="//tei:title[@xml:id='title']"/></h1>
                    </div>


                <div class="section">        
                    <div>
                        <h2>Descrizione della Fonte:</h2>
                        <xsl:apply-templates select="//tei:imprint"/>
                    </div>
                    <div>
                        <h2>Descrizione del Manoscritto:</h2>
                        <xsl:apply-templates select="//tei:objectDesc"/>
                    </div>
                </div>


                    <div id="about">
                        <footer>
                        <h1>INFORMAZIONI RIGUARDO IL PROGETTO:</h1>
                        
                        <div class="container">
                            <div class="box">
                                <h2>Informazioni dell'Edizione:</h2>
                                <xsl:apply-templates select="//tei:editionStmt"/>
                            </div>
                            <div class="box">
                                <h2>Informazioni sulla Pubblicazione:</h2>
                                <xsl:apply-templates select="//tei:publicationStmt"/>
                            </div>
                        </div>
                        
                        </footer>
                    </div>


            </body>
        </html>
    </xsl:template> 

    <!-- Template per titolo -->
    <xsl:template match="title[@xml:id='title']">
        <xsl:value-of select="."/>
    </xsl:template>


    <!-- Template descrizione doc -->
    <xsl:template match="tei:imprint">
        <div>
            <p><strong>Luogo di Pubblicazione:</strong> <xsl:value-of select="tei:pubPlace"/></p>
            <p><strong>Editore:</strong> <xsl:value-of select="tei:publisher"/></p>
            <p><strong>Data:</strong> <xsl:value-of select="tei:date"/></p>
        </div>
    </xsl:template>

    <xsl:template match="tei:publicationStmt">
        <div>
            <p><strong>Pubblicato da:</strong> <xsl:value-of select="tei:publisher"/></p>
            <p><strong>Luogo e data di Pubblicazione:</strong> <xsl:value-of select="tei:pubPlace"/>,<xsl:value-of select="tei:date"/></p>
            <p><strong>Disponibilità:</strong> <xsl:apply-templates select="tei:availability"/></p>
        </div>
    </xsl:template>

    <xsl:template match="tei:objectDesc/tei:supportDesc">
        <div>
            <p><strong>Supporto:</strong> <xsl:value-of select="tei:support"/></p>
            <p><strong>Condizioni:</strong> <xsl:value-of select="tei:condition"/></p>
        </div>
    </xsl:template>

    <xsl:template match="tei:layoutDesc/tei:layout">
        <div>
            <p><strong>Layout:</strong> <xsl:value-of select="."/></p>
        </div>
    </xsl:template>



 <!-- edizione e about    -->
 <xsl:template match="tei:editionStmt">
        <div>
            <p><strong>Edizione:</strong> <xsl:apply-templates select="tei:edition"/></p>
            <xsl:apply-templates select="tei:respStmt"/>
        </div>
    </xsl:template>

    <xsl:template match="tei:edition">
        <span><xsl:value-of select="."/></span>
    </xsl:template>

    <xsl:template match="tei:respStmt">
        <div>
            <p><strong><xsl:value-of select="tei:resp"/> </strong>
               <xsl:value-of select="tei:name"/>
            </p>
        </div>
    </xsl:template>


</xsl:stylesheet>


<!-- 
java -jar "./tools/SaxonHE10-3J/saxon-he-10.3.jar" -s:codifica.xml -xsl:codifica.xsl -o:progetto.html 
-->