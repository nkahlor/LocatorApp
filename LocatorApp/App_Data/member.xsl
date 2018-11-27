<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    
    <html>
      <table border="1">
        <tr bgcolor="#9acd32">
          <th>Username</th>
          <th>Password</th>
        </tr>
        <xsl:for-each select="members/member">
          <tr>
            <td>
            <xsl:value-of select="username"/>
            </td>
            <td>
            <xsl:value-of select="password"/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </html>
    
  </xsl:template>
</xsl:stylesheet>