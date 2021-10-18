# Microbial eukaryotes: Diversity and Evolution

This is the repository for the [Microbial eukaryotes ebook](https://uu-microbial-eukaryotes.github.io/ebook/).

It uses github pages with the [minima](https://github.com/jekyll/minima) theme and the [vanilla back to top button](https://github.com/vfeskov/vanilla-back-to-top).

## Figures

### Figure numbering
The shell script index_figures.sh numbers the figures according to how they sort with the -V option. If you want to add a figure e.g. between 1 and 2, you would name the new figure 2a_whatever.png. The important part is the "a" directly after the number, which will ensure the file is sorted in between 1 and 2, and become Figure 2 on the site (former Figure 2 is now 3, and so on). Running the script will update the data file figs.yml and should be done prior to pushing changes that include new figures, or otherwise changes their order in the text.

### Figure reference system
Figures are inserted into the markdown with the help of two jekyll includes: fignum.html for referring to the figure in the flowing text and figure.html for the actual figure. figure.html has no trailing newline, to make sure that there is no line break in the flowing text. If you want to refer to a figure without parentheses, add an html space ```&nbsp;``` before calling the include. Usage of these includes in the markdown:
```
{%- include fignum.html fn="1_prok-cell" -%} # This will insert "Figure <X>" as an html "a" tag in the text, 
                                             # where X is the number of the figure called "1_prok-cell" in _data/figs.yml.
{% include figure.html figname="1_prok-cell" caption="text" %} # This will insert the figure "1_prok-cell.png" 
                                                                             # at this position in the page. Add the caption 
                                                                             # directly as a parameter when calling this 
                                                                             # include. Html font tags work in the caption, 
                                                                             # e.g. <i>italics</i>
```
