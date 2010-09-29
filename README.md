Welcome to CFMarkdown
=====================
CFMarkdown is an implementation of the Markdown text rendering engine for ColdFusion that makes use of [markdownj](http://github.com/davidlong03/markdownj).  CFMarkdown also makes use of [JavaLoader](http://javaloader.riaforge.org/) to call markdownj.

CFMarkdown is super simple to instantiate and render markdown files with.
To setup the instantiation call we call the following:
	<cfset cfmarkdown = createObject('component','cfmarkdown').init(javaloader='javaloader.JavaLoader',markdownj=expandPath('markdownj.jar')) />
And to render a markdown file we call:
	<cfoutput>#cfmarkdown.render(expandPath('README.md'))#</cfoutput>

Pure CF Based Renderer
----------------------
CFMarkdown also includes a pure CF based renderer for Markdown as a proof of concept application.

Licensing
=======
CFMarkdown - Apache License, Version 2.0
----------------------------------------
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

JavaLoader - Common Public License
----------------------------------
MarkdownJ - DSB License
-----------------------