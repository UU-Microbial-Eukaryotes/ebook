# Microbial eukaryotes: Diversity and Evolution

This is the repository for the [Microbial eukaryotes ebook](https://uu-microbial-eukaryotes.github.io/ebook/).

It uses github pages with the [minima](https://github.com/jekyll/minima) theme and the [vanilla back to top button](https://github.com/vfeskov/vanilla-back-to-top).

## Figures

### Figure numbering
The shell script index_figures.sh numbers the figures according to how they sort with the -V option. If you want to add a figure e.g. between 1 and 2, you would name the new figure 2a_whatever.png. This file name will be sorted in between 1 and 2, and become Figure 2 on the site (former Figure 2 is now 3, and so on).

### Figure reference system
Figures are inserted into the markdown with the help of two jekyll includes: fignum.html for referring to the figure in the flowing text and figure.html for the actual figure. figure.html has no trailing newline, to make sure that there is no line break in the flowing text. If you want to refer to a figure without parentheses, add an html space ```&nbsp;``` before calling the include. Usage of these includes in the markdown:
```
{%- include fignum.html fn="1_prok-cell" -%} # This will insert "Figure 1" as an html "a" tag in the text.
{% include figure.html figname="1_prok-cell" caption="Caption text here." %} # This will insert the figure "1_prok-cell.png" at this position in the page. Write the caption directly when calling this include. Html font tags work, e.g. <i>italics</i>
```
