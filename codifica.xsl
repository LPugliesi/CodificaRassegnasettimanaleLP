<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="html" encoding="UTF-8"/>
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
                <div class="title">
                    <h1><xsl:value-of select="//tei:title[@xml:id='title']"/></h1>
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
                    <div id="img1">
                        <div class="container">
                            <div class="box">
                                <xsl:apply-templates select="//tei:surface[@xml:id='img1']" />
                            </div>
                            <div class="box">
                                <xsl:apply-templates select="//tei:text[@xml:id='img1']" />
                            </div>
                            <div class="box">
                                <xsl:apply-templates select="//tei:text[@xml:id='img1']" />
                            </div>
                            <hr/>
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
                                <img src="https://apre.it/wp-content/uploads/2021/01/logo_uni-pisa.png" alt="Logo Università di Pisa" style="width:300px; float: center;"/>
                            </div>
                            <div class="box">
                                <h2>Informazioni sulla Pubblicazione:</h2>
                                <xsl:apply-templates select="//tei:publicationStmt"/>
                            </div>
                        </div>
                        <p style="text-align:center">Repository <a href="https://github.com/LPugliesi/CodificaRassegnasettimanaleLP">GitHub</a></p>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Template per divisione delle righe come nel manoscritto -->
    <xsl:template match="tei:lb">
        <br />
    </xsl:template>


    <!-- Template descrizione documento e fonte -->
    <xsl:template match="tei:imprint">
        <div>
            <p><strong>Titolo:</strong><xsl:value-of select="//tei:title[@xml:id='title']"/></p>
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

    <!-- Template per il footer con edizione e pubblicazione -->
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

        <!-- Template immagini -->
            <xsl:template match="tei:surface">
                <xsl:element name="img">
                    <xsl:attribute name="src"><xsl:value-of select="current()[@xml:id]//tei:graphic/@url"/></xsl:attribute>
                    <xsl:attribute name="usemap">#<xsl:value-of select="current()/@xml:id" /></xsl:attribute>
                </xsl:element>
                <xsl:element name="map">
                    <xsl:attribute name="id"><xsl:value-of select="current()/@xml:id" /></xsl:attribute>
                    <xsl:apply-templates select="./tei:zone" />
                </xsl:element>
            </xsl:template>

        <!-- Template zone immagini -->
            <xsl:template match="tei:zone">
                <xsl:for-each select="current()">
                    <xsl:element name="area">
                        <xsl:attribute name="coords"><xsl:value-of select="current()/@ulx" />,<xsl:value-of select="current()/@uly" />,<xsl:value-of select="current()/@lrx" />,<xsl:value-of select="current()/@lry" /></xsl:attribute>
                        <xsl:attribute name="style">cursor: help</xsl:attribute>
                        <xsl:attribute name="title"><xsl:value-of select="current()/@corresp" /></xsl:attribute>
                        <xsl:attribute name="shape">rect</xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
            </xsl:template>



</xsl:stylesheet>



<!-- 
java -jar "./tools/SaxonHE10-3J/saxon-he-10.3.jar" -s:codifica.xml -xsl:codifica.xsl -o:progetto.html 
-->