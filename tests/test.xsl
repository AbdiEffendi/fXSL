<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="php foo"
 	xmlns:foo="test:uri"
	extension-element-prefixes="php func" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl">

	<xsl:output method="xml" indent="yes" encoding="utf-8" />

	<xsl:template match="/">
		<root>
			<demo><xsl:value-of select="php:function('demo')" /></demo>
			<test><xsl:copy-of select="test:bar()" /></test>
		</root>
	</xsl:template>

</xsl:stylesheet>