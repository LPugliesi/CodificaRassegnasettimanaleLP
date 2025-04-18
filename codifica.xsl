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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                <script src="./src/script.js"></script>
                <link href="./src/style.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <header>
                    <nav>
                        <div class="navbar">
                            <a class="nameproject" href='https://github.com/angelodel80/corsoCodifica'>Codifica di Testi</a>
                            <a href="#">Home</a>
                            <div class="dropdown">
                                <button class="dropbtn">Pagine
                                    <i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="#Pag1">Pagina 1</a>
                                    <a href="#Pag2">Pagina 2</a>
                                    <a href="#Pag3">Pagina 3</a>
                                    <a href="#Pag4">Pagina 4</a>
                                    <a href="#Pag5">Pagina 5</a>
                                    <a href="#Pag6">Pagina 6</a>
                                </div>
                            </div>
                            <a href="#about">About</a>
                        </div>
                    </nav>
                </header>
                <div class="logo">
                <a href='https://rassegnasettimanale.animi.it/' target="_blank"><img src="Logo.png" alt="La rassegna settimanale di politica"/></a>
                </div>
                <div class="desc">        
                    <div>
                        <h2>Descrizione della Fonte:</h2>
                        <xsl:apply-templates select="//tei:imprint"/>
                    </div>
                    <br/>
                    <div>
                        <h2>Descrizione del Manoscritto:</h2>
                        <xsl:apply-templates select="//tei:objectDesc"/>
                    </div>
                    <br/>
                    <div>
                        <h2>Descrizione della Codifica:</h2>
                        <xsl:apply-templates select="//tei:projectDesc"/>
                    </div>
                </div>
                <div id="fenomeni">
                    <ul class='bottoni_fenomeni'>
                        <button type="button" id="persone">Persone Reali</button>
                        <button type="button" id="epithet">Epithet</button>
                        <button type="button" id="luoghi">Luoghi</button>
                        <button type="button" id="date">Date</button>
                        <button type="button" id="organizzazioni">Nomi di Organizzazioni</button>
                        <button type="button" id="citazioni">Citazioni</button>
                        <button type="button" id="opere">Opere</button>
                        <button type="button" id="casaeditrice">Casa Editrice</button>
                        <button type="button" id="correntiletterarie">Correnti Letterarie</button>
                        <button type="button" id="verbum">Verbum</button>
                        <button type="button" id="foreign">Lingue Straniere</button>
                        <button type="button" id="correzioni">Correzioni</button>
                    </ul>
                </div>
                <div class="text">
                    <h2 id="Pag1">Pagina 1:</h2>
                    <div id="img1">
                        <div class="container">
                            <div class="box">
                                <a href='./pages/img1.png' target="_blank"><xsl:apply-templates select="//tei:surface[@xml:id='imgr1']" /></a>
                            </div>
                            <div class="boxtextA">
                            </div>
                            <div class="boxtext">
                                <xsl:apply-templates select="//tei:div[@xml:id='img1B']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <h2 id="Pag2">Pagina 2:</h2>
                    <div id="img2">
                        <div class="container">
                            <div class="box">
                                <a href='./pages/img2.png' target="_blank"><xsl:apply-templates select="//tei:surface[@xml:id='imgr2']" /></a>
                            </div>
                            <div class="boxtextA">
                                <xsl:apply-templates select="//tei:div[@xml:id='img2A']" />
                            </div>
                            <div class="boxtext">
                                <xsl:apply-templates select="//tei:div[@xml:id='img2B']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <h2 id="Pag3">Pagina 3:</h2>
                    <div id="img3">
                        <div class="container">
                            <div class="box">
                                <a href='./pages/img3.png' target="_blank"><xsl:apply-templates select="//tei:surface[@xml:id='imgr3']" /></a>
                            </div>
                            <div class="boxtextA">
                                <xsl:apply-templates select="//tei:div[@xml:id='img3A1']" /><hr />
                                <xsl:apply-templates select="//tei:div[@xml:id='img3A2']" />
                            </div>
                            <div class="boxtext">
                                <xsl:apply-templates select="//tei:div[@xml:id='img3B']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <h2 id="Pag4">Pagina 4:</h2>
                    <div id="img4">
                        <div class="container">
                            <div class="box">
                                <a href='./pages/img4.png' target="_blank"><xsl:apply-templates select="//tei:surface[@xml:id='imgr4']" /></a>
                            </div>
                            <div class="boxtextA">
                                <xsl:apply-templates select="//tei:div[@xml:id='img4A']" />
                            </div>
                            <div class="boxtext">
                                <xsl:apply-templates select="//tei:div[@xml:id='img4B1']" /><hr />
                                <xsl:apply-templates select="//tei:div[@xml:id='img4B2']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <h2 id="Pag5">Pagina 5:</h2>
                    <div id="img5">
                        <div class="container">
                            <div class="box">
                                <a href='./pages/img5.png' target="_blank"><xsl:apply-templates select="//tei:surface[@xml:id='imgr5']" /></a>
                            </div>
                            <div class="boxtextA">
                                <xsl:apply-templates select="//tei:div[@xml:id='img5A']" />
                            </div>
                            <div class="boxtext">
                                <xsl:apply-templates select="//tei:div[@xml:id='img5B']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                    <h2 id="Pag6">Pagina 6:</h2>
                    <div id="img6">
                        <div class="container">
                            <div class="box">
                                <a href='./pages/img6.png' target="_blank"><xsl:apply-templates select="//tei:surface[@xml:id='imgr6']" /></a>
                            </div>
                            <div class="boxtextA">
                            </div>
                            <div class="boxtext">
                                <xsl:apply-templates select="//tei:div[@xml:id='img6B']" />
                            </div>
                            <hr/>
                        </div>
                    </div>
                </div><br />
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

    <!-- Template aggiunta id per paragrafi -->
    <xsl:template match="//tei:div/tei:ab">
        <xsl:for-each select="current()">
            <xsl:element name="span">
                <xsl:attribute name="class">zone</xsl:attribute>
                <xsl:attribute name="id"><xsl:value-of select="current()/@xml:id" /></xsl:attribute>
                    <xsl:apply-templates />
            </xsl:element>
        </xsl:for-each>
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

    <xsl:template match="tei:encodingDesc">
        <div>
            <p><xsl:apply-templates/></p>
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

    <!-- Template per i fenomeni notevoli -->
    <xsl:template match="tei:persName">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">persName</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:persName" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="tei:addName">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">addName</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:addName" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>          

    <xsl:template match="tei:settlement">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">settlement</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:settlement" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>     

    <xsl:template match="tei:date">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">date</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:date" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template> 

    <xsl:template match="tei:orgName">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">orgName</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:orgName" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template> 

    <xsl:template match="tei:quote">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">quote</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:quote" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template> 

    <xsl:template match="tei:bibl">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">bibl</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:bibl" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="tei:publisher">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">publisher</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:publisher" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template> 

    <xsl:template match="tei:term">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">term</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:term" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>          

    <xsl:template match="tei:emph">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">emph</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:emph" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>    

    <xsl:template match="tei:foreign">
        <xsl:for-each select="current()">
            <xsl:element name="span">
             <xsl:attribute name="class">foreign</xsl:attribute>
             <xsl:apply-templates />
                <xsl:value-of select="tei:foreign" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!--Template per i sic e corr-->
    <xsl:template match="//tei:choice">
        <xsl:for-each select="current()">
            <xsl:if test="tei:sic">
                <xsl:element name="span">
                    <xsl:attribute name="class">corretto</xsl:attribute>
                    <xsl:value-of select="tei:corr" />
                </xsl:element>
                <xsl:element name="span">
                    <xsl:attribute name="class">nascosto</xsl:attribute>
                    <xsl:attribute name="style">color: red;</xsl:attribute>
                    <xsl:value-of select="tei:sic" />
                </xsl:element>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>