<cfcomponent output="false">
	<cffunction name="init" access="public" hint="Constructor method for cfmarkdown">
		<cfargument name="markdownj" default="#expandPath('markdownj.jar')#" hint="The expanded path to markdownj.jar.  Defaults to {cfmarkdown-path}/markdownj.jar" />
		<cfargument name="javaloader" default="javaloader.JavaLoader" hint="The relative path to JavaLoader in dot format.  Defaults to {cfmarkdown-path}.javaloader.JavaLoader" />
		<cfscript>
			paths = arrayNew(1);
			paths[1] = ARGUMENTS.markdownj;
			variables.javaloader = createObject('component',ARGUMENTS.javaloader).init(paths);
			variables.markdownprocessor = variables.javaloader.create('com.petebevin.markdown.MarkdownProcessor');
		</cfscript>
		
		<cfreturn this />
	</cffunction>

	<cffunction name="render" access="public" returnType="string" hint="Renders a file for Markdown">
		<cfargument name="mdfile" type="string" required="true" hint="File path to be rendered" />
		<cfscript>
			var thefile = FileRead(ARGUMENTS.mdfile);
			var html = variables.markdownprocessor.markdown(fileRead(ARGUMENTS.mdfile));
		</cfscript>
		
		<cfreturn html />
	</cffunction>
</cfcomponent>