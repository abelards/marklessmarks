##########################
# links
s = " [[The monk Wangohan]] was mumbling about [[Landhwa|his rival]]"
s.gsub(/\[\[([^]]*)\]\]/,  %q[<a href="http://thecodelesscode.com/names/\1">\1</a>])

##########################
# h3
s = "/Wù/\n\n== Qi's poem\n\nThe Void is nothing, but it is useful,\nYou want a house for its empty space.\n"
s.gsub(/^== (.*)$/, '<h3>\1</h3>')

##########################
# h3 which did not work
s = %Q[/Wù/

== Qi's poem

The Void is nothing, but it is useful,
You want a house for its empty space.
]

s.gsub(/^$^== (.*)$^$/, "<h3>\\1</h3>")

##########################
# footnotes
content = %Q[Qi{{*}} was greeting the morning sun.

{{*}} The old scribe.
]

cc_content = content.sub(/\{\{\*\}\}/,
  %Q[<a href="note-*" id="noteref-*"><sup class="footnote">*</sup></a>])

cc_content = cc_content.sub(/\{\{\*\}\}(.*)\Z/,
%q[<div class="footnotes">
<div class="footnote" id="note-*">
<a href="#noteref-*"><sup class="footnote">*</sup></a>&nbsp;
\1</div></div>])

