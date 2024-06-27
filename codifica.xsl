<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Progetto di Codifica di Testi</title>
                <link rel="stylesheet"
                    href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
                <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                <script src="script.js"></script>
                <link href="style.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <header>
                    <nav class="menu">
                        <ul class="menu1">
                            <li><a href="#p1">Pagina 1</a></li>
                            <li><a href="#p2">Pagina 2</a></li>
                            <li><a href="#p3">Pagina 3</a></li>
                            <li><a href="#p4">Pagina 4</a></li>
                            <li><a href="#p5">Pagina 18</a></li>
                            <li><a href="#p6">Pagina 19</a></li>
                            <li><a href="#p7">Pagina 20</a></li>
                        </ul>
                    </nav>
                    <div class="tit">
                        <h1>
                            <xsl:value-of select="//tei:title[@xml:lang='it']" />
                        </h1>
                    </div>
                </header>
                <div>
                    <div id="info">
                        <h2>Descrizione</h2>
                        <div class="desc">
                            <div class="text_desc">
                                <div>
                                    <xsl:apply-templates select="//tei:origin"/>
                                </div>
                                <div>
                                    <xsl:apply-templates select="//tei:acquisition" />
                                </div>
                                <div>
                                    <xsl:apply-templates select="//tei:objectDesc" />
                                </div>
                            </div>
                        </div> 
                        <div id="fenomeni">
                            <h2>Fenomeni notevoli rilevati</h2>
                            <ul class='bottoni_fenomeni'>
                                <button type="button" id="persone">Persone Reali</button>
                                <button type="button" id="date">Date</button>
                                <button type="button" id="citazioni">Citazioni</button>
                                <button type="button" id="organizzazioni">Nomi di Organizzazioni</button>
                                <button type="button" id="luoghi">Luoghi</button>
                            </ul>
                        </div>
                </div>

                <div class="codifica">
                <div id="box1">
                    <article id="p1">
                        <h2>Pagina 1</h2>
                        <div class="flexbox">
                            <div class="img">
                                <xsl:apply-templates select="//tei:surface[@xml:id='img1']" />
                            </div>
                            <div class="text">
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '1']" />
                            </div>
                        </div>
                    </article>
                </div>
                <div id="box2">
                    <article id="p2">
                        <h2>Pagina 2</h2>
                        <div class="flexbox">
                            <div class="img">
                                <xsl:apply-templates select="//tei:surface[@xml:id='img2']" />
                            </div>
                            <div class="text">
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '2']" />
                            </div>
                        </div>
                    </article>
                </div>
                <div id="box3">
                    <article id="p3">
                        <h2>Pagina 3</h2>
                        <div class="flexbox">
                            <div class="img">
                                <xsl:apply-templates select="//tei:surface[@xml:id='img3']" />
                            </div>
                            <div class="text">
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '3']" />
                            </div>
                        </div>
                    </article>
                </div>
                <div id="box4">
                    <article id="p4">
                        <h2>Pagina 4</h2>
                        <div class="flexbox">
                            <div class="img">
                                <xsl:apply-templates select="//tei:surface[@xml:id='img4']" />
                            </div>
                            <div class="text">
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '4']" />
                            </div>
                        </div>
                    </article>
                </div>
                <div id="box5">
                    <article id="p5">
                        <h2>Pagina 18</h2>
                        <div class="flexbox">
                            <div class="img">
                                <xsl:apply-templates select="//tei:surface[@xml:id='img5']" />
                            </div>
                            <div class="text">
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '5']" />
                            </div>
                        </div>
                    </article>
                </div>
                <div id="box6">
                <article id="p6">
                    <h2>Pagina 19</h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='img6']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '6']" />
                        </div>
                    </div>
                </article>
                </div>
                <div id="box7">
                    <article id="p7">
                        <h2>Pagina 20</h2>
                        <div class="flexbox">
                            <div class="img">
                                <xsl:apply-templates select="//tei:surface[@xml:id='img7']" />
                            </div>
                            <div class="text">
                                <xsl:apply-templates select="//tei:body/tei:div[@n = '7']" />
                            </div>
                        </div>
                    </article>
                </div>
                </div>
            </div>
        </body>
    </html>
</xsl:template>


</xsl:stylesheet>

<!-- 
java -jar "./tools/SaxonHE10-3J/saxon-he-10.3.jar" -s:codifica.xml -xsl:codifica.xsl -o:progetto.html 
-->