# UniTartuCS-thesis-template

Modernized (unofficial) LaTeX template for [bachelor's and master's thesis at University of Tartu Institute of Computer Science](https://cs.ut.ee/et/sisu/loputoode-tahtajad-ja-juhendid).

## Usage

### Setup

1. **[Overleaf](https://www.overleaf.com/) (easy).**

   1. Download the template as zip file from [here](https://github.com/sim642/unitartucs-thesis-template/archive/refs/heads/master.zip).
   2. Log in to Overleaf.
   3. Click "New Project" (top left) and choose "Upload Project".
   4. Upload the downloaded template zip file.
   5. _(Optional)_ Click "Menu" (top left) and choose thesis language under "Spell check".

2. **[Visual Studio Code](https://code.visualstudio.com/) (medium).**

   1. Install Ubuntu packages (or equivalent) (in WSL on Windows):
      ```console
      sudo apt install --no-install-recommends --no-install-suggests texlive-plain-generic texlive-latex-extra texlive-lang-european latexmk texlive-fonts-extra tex-gyre texlive-bibtex-extra biber python3-pygments
      ```
   2. Create new GitHub repository with the template from [here](https://github.com/new?template_name=unitartucs-thesis-template&template_owner=sim642).
   3. Clone your new GitHub repository locally.
   4. Open it in Visual Studio Code.
   5. Install [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension for Visual Studio Code.
   6. _(Optional)_ Install [LTeX – LanguageTool grammar/spell checking](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) extension for Visual Studio Code.

3. **Command line (hard).**

   1. Install packages listed above.
   2. Download the template as zip, or create a new GitHub repository with the template and clone it (described above).
   3. Compile with the following command line command: `latexmk -pdf thesis`


### Configuration

The main file for the thesis is [`thesis.tex`](./thesis.tex) and (example) sections are in [`sections/`](./sections/).
The bibliography is defined in [`thesis.bib`](./thesis.bib).
All the `unitartucs*` files define the thesis style according to the institute's thesis guidelines and should not be changed.

Follow the TODOs (prefixed with `% TODO:`) in [`thesis.tex`](./thesis.tex) and [`sections/info.tex`](./sections/info.tex) to configure the template:
1. Choose thesis language.
2. Fill in metadata (title, author, etc.).
3. Choose citation and bibliography style.
4. Fill in info page (abstract, keywords, CERCS code).


## About

The original (unversioned) template was by Sven Laur, Liina Kamm, Tõnu Tamme, with the last change by Eero Vainikko on 2021-09-14.

The template was modernized by Simmo Saan and is now version controlled on GitHub.
Changes are described in [`CHANGELOG.md`](./CHANGELOG.md).
Feel free to open issues on GitHub with problems and suggestions relating to the template.
Pull requests with improvements are also welcome.
