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
5. Automatic appendix numbering, fix appendix number format.
6. Sections in separate files.
7. BibLaTeX instead of manual/BibTex citations. Consistent with thesis guide. Add examples from guide. Use DOIs.
8. Automatic page breaks (with `\clearpage` between sections)
9. Remove old packages (`hypcap`, `eucal`).
10. Improve PDF bookmarks/contents, PDF metadata.
11. Use modern packages (`booktabs`, `subcaption`)
12. Remove obscure packages (inference rules (`proof`, `semantic`), `algorithm2e`)
13. Use `minted` instead of `listings`.
14. Improved instructions for template usage.
15. Rewrite guide on references, citations, figures, etc to match changes.

### TODO
- [ ] `newtxtext` instead of `times`
