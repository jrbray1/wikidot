# 57 examples of __text__ for underscores not converted, as not a clean usage

# ++ Large text to ===
s`^\+\+([^+].*)`==\1==`1

# +++ Large text to ===
s`\+\+\+([^+].*)`===\1===`1

# Change back quote to forward quote
s/`/'/g

# Change bold ** to '''
s`\*\*`\'\'\'`g

# Change [[include listof]] [[include listgen]] to {{fixme}}
s`\[\[include (listof|listgen|files).*\]\]`{{fixme}} listof`1

# Change [[module ListPages separate="no"  order="name" perPage="250" tags="fanthology"]]
#%%title_linked%%
#[[/module]]
s`\[\[module ListPages(.*)]]`{{Fixme}}ListPages\1`g
s`%%title_linked%%``g
s`\[\[/module]]``g

# Remove > at line start marking a quote. This still leaves a space, so text appears indented
s`^>``g

# change italics // to '' provided they are not part of http://
s`//`''`g
s`([p|s]):''`\1://`g

#change bullet # at the start of a line to *, otherwise leave alone
s/^#/*/1

#Change [[module Redirect destination="A"]] to #REDIRECT [[A]]
s/\[\[module [rR]edirect destination="(.*)"\]\]/#REDIRECT [[\1]]/1

# Change [http... |text] to  [X T]
s`\[\[\[(http[^\ ]*) ?\| ?([^]]*)]]]`[\1\2]`g
s`\[(http[^\ ]*) ?([^]]*)]`[\1 \2]`g

# Change [[module files]] to {{fixme}}
s`\[\[module [Ff]iles\]\]`{{fixme}}`1

s` }}`}}`g

# Change [[module Backlinks]] to {{fixme}}
s`\[\[module [Bb]acklinks\]\]`{{fixme}}`1

#change [[include file]] to \{\{file\}\}
s/\[\[include (.*)\]\]/{{fixme}}{{\1}}/g

#change [[[ page ]]] to [[page]]
s`\[\[\[ *`[[`g
s` *\]\]\]`]]`g

# Change @@ to spaces
s/@@/  /g

# Change [[image url]] to url
s`\[\[.*[Ii]mage (http:.*)(\]\])`{{checkme}}\n\1`1

# Change [[image file to {{fixme}
# Don't add spaces
s`\[\[[Ii]mage ([^]]*) .*]]`{{fixme}}\n\1`1
s`\[\[=[Ii]mage ([^]]*) .*]]`{{fixme}}\n\1`1
s`\[\[<[Ii]mage ([^]]*) .*]]`{{fixme}}\n\1`1
s`\[\[>[Ii]mage ([^]]*) .*]]`{{fixme}}\n\1`1
s`\[\[f<[Ii]mage ([^]]*) .*]]`{{fixme}}\n\1`1
s`\[\[f>[Ii]mage ([^]]*) .*]]`{{fixme}}\n\1`1

s`\[\[[Ii]mage ([^]]*)]]`{{fixme}}\n\1`1
s`\[\[=[Ii]mage ([^]]*)]]`{{fixme}}\n\1`1
s`\[\[<[Ii]mage ([^]]*)]]`{{fixme}}\n\1}}`1
s`\[\[>[Ii]mage ([^]]*)]]`{{fixme}}\n\1}}`1
s`\[\[f<[Ii]mage ([^]]*)]]`{{fixme}}\n\1}}`1
s`\[\[f>[Ii]mage ([^]]*)]]`{{fixme}}\n\1}}`1

# Change [[footnote]] to <ref>
s`\[\[footnote\]\]`<ref>`g

# Change [[\footnote]] to </ref>
s`\[\[\/footnote\]\]`</ref>`g

# Change [[footnoteblock title="Footnote(s)"]] to <references/>
s`\[\[footnoteblock.*\]\]`<references/>`g

#Warn about remaining modules
s`(^\[\[module)`{{fixme}}\1`g
