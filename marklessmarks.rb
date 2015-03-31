
module Jekyll
  module Converters
    class Markdown < Converter
      alias old_convert convert

      SEPARATOR = "<p class='c'>&mdash; &mdash; &mdash;</p>"
      DOMAIN  = "http://thecodelesscode.com"
      CASE    = "#{DOMAIN}/case"
      NAME    = "#{DOMAIN}/names"
      NOTE    = %q[<a href="#note-*" id="noteref-*"><sup class="footnote">*</sup></a>]
      FOOTNOTE = %q[<div class="footnotes">
  <div class="footnote" id="note-*">
    <a href="#noteref-*"><sup class="footnote">*</sup></a>&nbsp;\1
  </div>
</div>]

      def convert(content)
        # footnotes
        cc_content = content.
          sub(/\{\{\*\}\}/, NOTE).
          sub(/\{\{\*\}\}(.*)\Z/, FOOTNOTE).
          sub(/\[\[\*\]\]/, NOTE).
          sub(/\[\[\*\]\](.*)\Z/, FOOTNOTE)

        cc_content = cc_content.
        # formatting
          gsub(/\/\//, "<br />").
          gsub(/^== (.*)$/, "<h3>\\1</h3>").
          gsub(/\/([\w ]*)\//, "<i>\\1</i>").
	        gsub(/- ?- ?-/, SEPARATOR).
        # links
          gsub(/\[\[\#([0-9]*)\|([^\]]*)\]\]/, %q[<a href="#{CASE}/\1">\2</a>]).
          gsub(/\[\[\#([0-9]*)\]\]/, %q[<a href="#{CASE}\1">\1</a>]).
          gsub(/\[\[([^\]]*)\|([^\]]*)\]\]/, %q[<a href="#{NAME}/\1">\2</a>]).
          gsub(/\[\[([^\]]*)\]\]/, %q[<a href="#{NAME}/\1">\1</a>])

        old_convert(cc_content)
      end
    end
  end
end
