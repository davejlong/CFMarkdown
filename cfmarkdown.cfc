<cfcomponent output="false">
	<cfscript>
		function init(){
			return this;
		}
	</cfscript>
	<cffunction name="render" access="public" returnType="string" hint="Renders a file for Markdown">
		<cfargument name="mdfile" type="string" required="true" hint="File path to be rendered" />
		<cfscript>
			var thefile = FileRead(ARGUMENTS.mdfile);
			var html = h1(thefile);
			html = h2(html);
		</cfscript>
		
		<cfreturn html />
	</cffunction>
	
	<!---#### Render Functions ####--->
	<cffunction name="h1" access="private" returntype="string" hint="Renders lines underlined with =">
		<cfargument name="text" type="string" required="true" hint="Text in Markdown Format" />
		<cfscript>
			var regExp = '([A-Za-z0-9\s]{1,})\n([\=]{1,})';
			var h1s = REMatch(regExp,ARGUMENTS.text);
			var ret = ARGUMENTS.text;
			var ind = 1;
			var h1 = '';
			if(arrayLen(h1s)){
				for(ind=1;ind LTE arrayLen(h1s);ind=(ind+1)){
					h1 = '<h1>' & REReplace(h1s[ind],'\n([\=]{1,})','','one') & '</h1>';
					ret = replace(ret,h1s[ind],h1);
				}
			}
			
			return ret;
		</cfscript>
	</cffunction>
	
	<cffunction name="h2" access="private" returntype="string" hint="Renders lines underlined with -">
		<cfargument name="text" type="text" required="true" hint="Text in Markdown Format" />
		<cfscript>
			var regExp = '([A-Za-z0-9\s]{1,})\n([\-]{1,})';
			var h2s = REMatch(regExp,ARGUMENTS.text);
			var ret = ARGUMENTS.text;
			var ind = 1;
			var h2 = '';
			if(arrayLen(h2s)){
				for(ind=1;ind LTE arrayLen(h2s);ind=(ind+1)){
					h2 = '<h2>' & REReplace(h2s[ind],'\n([\-]{1,})','','one') & '</h2>';
					ret = replace(ret,h2s[ind],h2);
				}
			}
			
			return ret;
		</cfscript>
	</cffunction>
</cfcomponent>