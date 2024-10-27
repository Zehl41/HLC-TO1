<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
	<h2>En este ejemplo buscamos que el numero del torneo es impar y hay una cantidad de
          equipos mayor a 20</h2>
        <table>
          <tr>
            <th>Torneo</th>
            <th>Cantidad de Equipos</th>
          </tr>
          <xsl:apply-templates select="torneos/torneo[@numero mod 2 = 0 and @numero > 20]"/>
        </table>
  </xsl:template>

  <xsl:template match="torneo">
    <tr>
      <td>
        <xsl:value-of select="concat('Torneo ', @numero)"/>
      </td>
      <td>
        <xsl:value-of select="cantidad_equipos"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>