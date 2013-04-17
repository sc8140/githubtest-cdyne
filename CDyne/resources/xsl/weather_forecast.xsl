<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
							  xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">

	<xsl:output
		method="xml"
		omit-xml-declaration="yes"
		indent="no"
		media-type="string"/>
		
	<xsl:template match="/request">
		<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:weat="http://ws.cdyne.com/WeatherWS/">
		   <SOAP-ENV:Header/>
		   <SOAP-ENV:Body>
			  <weat:GetCityForecastByZIP>
				 <weat:ZIP><xsl:value-of select="zip" /></weat:ZIP>
			  </weat:GetCityForecastByZIP>
		   </SOAP-ENV:Body>
		</SOAP-ENV:Envelope>
	</xsl:template>
</xsl:stylesheet>