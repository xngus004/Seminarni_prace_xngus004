<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Ngoc_Son_Nguyen_-_projekt</title>
        <style> body{font-family: Arial; font-size: 12px;} h2, table{padding: 5px; } h2{margin:10px 0 0 0;} h1{padding: 5px; background-color: ##669900;} td td {padding: 2px 8px;}
        td td:first-child{border-right: 1px solid #ccc; background-color: #ccc; font-weight: bold;}</style>
      </head>
      <body>
        <h1>Hudební styly v nočních klubech</h1>
        <table>
          <xsl:for-each select="club_music/zanr">
            <tr><td colspan="3"><h2 style="background-color: #ddd; border: 1px solid #ccc; text-align: left">
            Žánr - <xsl:value-of select="zanr_desc/nazev_z"/></h2></td></tr>
            
            <tr> 
              <xsl:for-each select="zanr_desc">
                <table style="background-color: #eee; border: 1px solid #ddd;">
                  <tr>
                    <td>ID:</td>
                    <td><xsl:value-of select="id"/></td>
                  </tr>
                  <tr>
                    <td>Název:</td>
                    <td><xsl:value-of select="nazev_z"/></td>
                  </tr>
                  <tr>
                    <td>Sub žánr:</td>
                    <td><xsl:value-of select="sub_zanr"/></td>
                  </tr>
                  <tr>
                    <td>Popis:</td>
                    <td><xsl:value-of select="desc"/></td>
                  </tr>
                </table>
              </xsl:for-each> 
            </tr>

                  <tr>
                    <xsl:for-each select="pisnicky/pisen">
                      <td colspan="3">
                        <table style="background-color: #eee; border: 1px solid #ddd; width: 100%;">
                        <tr><td colspan="3"><h3 style="margin: 0; text-align: left;">Skladba</h3></td></tr>
                          <tr>
                            <td>Pohlaví autora:</td>
                            <td><xsl:value-of select="@pohlavi"/></td>
                          </tr>
                          <tr>
                            <td>Název:</td>
                            <td><xsl:value-of select="nazev"/></td>
                          </tr>
                          <tr>
                            <td>Autor:</td>
                            <td><xsl:value-of select="autor"/></td>
                          </tr>
                          <tr>
                            <td>Album:</td>
                            <td><xsl:value-of select="album"/></td>
                          </tr>
                          <tr>
                            <td>BPM (beats per minute):</td>
                            <td><xsl:value-of select="bpm"/></td>
                          </tr>
                          <tr>
                            <td>Tónina:</td>
                            <td><xsl:value-of select="tonina"/></td>
                          </tr>
                          <tr>
                            <td>Rok vydání:</td>
                            <td><xsl:value-of select="rok_vydani"/></td>
                          </tr>
                          <tr>
                            <td>Přístupné PG12:</td>
                            <td><xsl:value-of select="pristupne/@PG12"/></td>
                          </tr>
                          <tr>
                            <td>Label:</td>
                            <td><xsl:value-of select="label"/></td>
                          </tr>
                        </table>
                      </td>
                    </xsl:for-each>
                  </tr>

          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
