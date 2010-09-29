<cfscript>
	cfmarkdown = createObject('component','cfmarkdown').init();
	renderedText = cfmarkdown.render(expandPath('README.md'));
</cfscript>
<cfoutput>#renderedText#</cfoutput>