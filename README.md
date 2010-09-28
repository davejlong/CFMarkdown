Welcome to CFMarkdown
=====================
CFMarkdown is an implementation of the Markdown text rendering engine written in ColdFusion.  CFMarkdown is composed of only one necessary component, cfmarkdown.cfc.
To properly instantiate CFMarkdown you need to call the init function in the createObject call:
	<cfscript>
		cfmarkdown = createObject('component','cfmarkdown').init();
		writeOutput(cfmarkdown.render('README.md'));
	</cfscript>

Features so far
---------------
CFMarkdown is still being built and currently only includes header rendering, meaning text underlined with = and with -.  In the future the application will also render links, lists, blockquoting, and code snippets, along with some others.  If you would like to contribute your efforts to building CFMarkdown please fork the repo, make your edits, and create a pull request.

License
-------
Copyright 2010 David Long

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
		http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.