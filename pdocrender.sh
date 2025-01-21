#! /bin/bash




# 1. .html pre-render process
pandoc -r markdown -w html techbooktemplate.markdown -o techbooktemplate-rendered.html




# 2.a .odt render process (Libreoffice Document/ Openoffice Document)
pandoc -r html -w odt -s --toc=true techbooktemplate-rendered.html -o techbooktemplate-rendered.odt


# 2.b .docx render process (MS Word Document)
pandoc -r html -w docx -s --toc=true techbooktemplate-rendered.html -o techbooktemplate-rendered.docx





