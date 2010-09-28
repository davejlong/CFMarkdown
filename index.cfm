<cfset cfmarkdown = createObject('component','cfmarkdown').init() />

<cfset renderMarkdown = cfmarkdown.render('text.md') />

<cfoutput>#renderMarkdown#</cfoutput>