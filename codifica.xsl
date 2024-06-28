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
                            <a href="#" class="nameproject">Codifica di Testi</a>
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
                            <a href="#">About</a>
                        </div>
                    </nav>

                    <div class="tit">
                        <h1>
                            <xsl:value-of select="//tei:title[@xml:lang='it']" />
                        </h1>
                    </div>
                    
                </header>
            </body>
        </html>
    </xsl:template>

<!-- Template per titolo -->
<xsl:template match="tei:title">
    <i class="title"><xsl:value-of select="." /></i>
</xsl:template>




</xsl:stylesheet>


<!-- 
java -jar "./tools/SaxonHE10-3J/saxon-he-10.3.jar" -s:codifica.xml -xsl:codifica.xsl -o:progetto.html 
-->