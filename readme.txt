

markdown template to author a technical book with figure captions in markdown. E.g a programming book, a scientific book, a manual or a technical documentation.


Issue
Figures are very important components of technical books. Often figures are more interesting than the accompanying text. Thus, a professional technical book requires a list of figures, where the reader can look them up. The list of figures is usually an automatic index generated from the figure captions (the little text boxes below a figure). Unfortunately, there is no figure caption syntax in commonmark spec or in extended mdown syntax.


Solution
To solve for the missing mdown figure caption we instead do apply a html figure-tag and do pre-render the mdown document to html document, first. In the second step we render the html document containing the html figure captions to an .odt and an .docx document. 

Finally we create the list of figures by the automatic indexing function inside Libreoffice/ MS Word. This is a workaround. In pandoc <= 3.7 the automatic creation of a list of figures from html figure caption tags fails.


Usage
- Copy the techbooktemplate.
- Copy&paste the mdown syntax elements you need for your content.
- Put your content in.
- Run ./pdocrender.sh.
- Open the generated .odt/ .docx document in Libreoffice/ Openoffice/ MS Word.
- Generate the list of figures (and the table of contents) as described in techbooktamplate.mdown chapter 4.


Requirements
pandoc >= 3.0
