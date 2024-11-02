1. **Create LaTeX document class to separate required formatting from thesis content.**
   Students can focus on the content like with any other document class, while the formatting technicalities they shouldn't be concerned with are out of sight.
2. **Use standard (`\title`, `\author`, etc.) and custom (`\supervisor`, etc.) commands to define metadata.**
   These are automatically used for the title page, the info page, the licence and the PDF metadata.
   1. **Use standard `\maketitle` to typeset the title page.**
      This automatically uses the chosen thesis language.
   2. **Use custom `\printlicence` to typeset the licence.**
      This automatically uses the chosen thesis language.
3. **Add environments and commands for typesetting the info page.**
   This ensures consistent formatting for both languages.
   If Estonian and English info do not fit on the same page, they will be automatically put on separate pages (as opposed to a random page break).
4. **Automate appendix section numbering.**
   Also fixes appendix number format to _not_ use dot after Roman numerals.
5. **Add BibLaTeX styles that match thesis guidelines.**
   Examples from the guidelines are included as BibLaTeX entries.
   Also allows DOIs to be used since they are now standard in academia.
6. **Update used/suggested packages.**
   1. **Replace `times` with `newtxtext`.**
      `newtxtext` replaces the obsolete `mathptmx` which replaces the obsolete `times`.
      `newtxtext` has improved readability and comes with correctly scaled Helvetica for `\textsf`.
   2. **Replace `listings` with `minted`.**
      `minted` is modern and has nice-looking output out-of-the-box, while `listings` looks ugly out-of-the-box.
   3. **Add modern packages.**
      1. `booktabs` for professional tables.
      2. `subcaption` for subfigures/subtables (instead of using `minipage` environment manually).
   4. **Remove unnecessary packages.**
      1. `hypcap` functionality is already provided by `caption`.
      2. `eucal` was commented out and unused.
   5. **Remove less common optional packages.**
      1. `proof` and `semantic` for inference rules.
      2. `algorithm2e` for pseudocode.
7. **Split sections into separate files.**
   This is a good practice to suggest to students.
   Also adds automatic page breaks (with `\clearpage`) between sections.
8. **Improve PDF bookmarks/contents and metadata.**
   This improves quick PDF navigation.
9. **Adapt instructions for template changes.**
   1. Improve instructions in `.tex` sources about template usage.
   2. Rewrite placeholder section on references, citations, figures, etc.
