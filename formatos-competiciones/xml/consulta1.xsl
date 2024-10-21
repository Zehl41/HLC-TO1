<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
      
	<h2>En este ejemplo buscamos que la modalidad sean grupos y me los ordene por nombre ascendente</h2>
        <table>
          <tr>
            <th>Torneo</th>
            <th>Modalidad</th>
          </tr>
          <xsl:apply-templates select="torneos/torneo[modalidades/modalidad = 'Grupos']">
            <xsl:sort select="nombre" data-type="text" order="ascending"/>
          </xsl:apply-templates>
        </table>
  </xsl:template>

  <xsl:template match="torneo">
    <tr>
      <td>
        <xsl:value-of select="nombre"/>
      </td>
      <td>
        <xsl:value-of select="modalidades/modalidad"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
