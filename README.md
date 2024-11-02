# UniTartuCS-thesis-template

## Usage

1. **[Overleaf](https://www.overleaf.com/) (easy).**

   1. Download the template as zip file from [here](https://github.com/sim642/unitartucs-thesis-template/archive/refs/heads/master.zip).
   2. Log in to Overleaf.
   3. Click "New Project" (top left) and choose "Upload Project".
   4. Upload the downloaded template zip file.
   5. _(Optional)_ Click "Menu" (top left) and choose thesis language under "Spell check".

2. **[Visual Studio Code](https://code.visualstudio.com/) (medium).**

   1. Create new GitHub repository with the template from [here](https://github.com/new?template_name=unitartucs-thesis-template&template_owner=sim642).
   2. Clone your new GitHub repository locally.
   3. Open it in Visual Studio Code.
   4. Install [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension for Visual Studio Code.
   5. _(Optional)_ Install [LTeX – LanguageTool grammar/spell checking](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) extension for Visual Studio Code.

3. **Command line (hard).**

   1. Download the template as zip, or create a new GitHub repository with the template and clone it (described above).
   2. Compile with the following command line command: `latexmk -pdf thesis`

```
% Institute of Computer Science thesis template
% authors: Sven Laur, Liina Kamm, Tõnu Tamme
% last change Eero Vainikko <eero.vainikko@ut.ee> 14.09.2021
%--
% Compilation instructions:
% 1. Choose main language on line 55-56 (English or Estonian)
% 2. Compile 1-3 times to get refences right
% pdflatex unitartucs-thesis-template
% bibtex unitartucs-thesis-template
%--
% Please use references like this:
% <text> <non-breaking-space> <cite/ref-command> <punctuation>
% This is an example~\cite{example}.

% Use package babel for English or Estonian
% If you use Estonian make sure that Estonian hyphenation is installed
% - hypen-estonian or eehyp packages
```