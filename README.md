# MarklessMarks
### The Codeless Code markup, for Jekyll
I translated some Codeless Code cases in French
and wanted to do my own fanfic on my Jekyll blog.
This is a very quick and naive implementations of the
formatting options I've seen in The Codeless Code raw files.

### How to use
1. Add this source file in the _plugins directory at your Jekyll root.
2. Write files with the Codeless Code Syntax.
3. That's it! Happy static blog generation.

### Differences
1. Write YAML delimiter `---` before and after tags, and add your Jekyll ones.
2. Footnotes `{{*}}` will not work with Liquid. Write them as `[[*]]`.
3. I only need a line to start by `==` to make an H3. Ref wants a blank line before and after.

### TODO
1. languages and translators (I'm likely to translate my own ones ^^)
2. other sites and series (cf. the Applicant)
3. images and comments (I'm unlikely to do mine anytime soon)

That's it!
Well, until there's more, because I don't have Qi's source :)
