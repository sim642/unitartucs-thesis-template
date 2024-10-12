# Use build/ directory for LaTeX auxiliary and output files to avoid cluttering sources
$out_dir = 'build';
$aux_dir = 'build';

# Add --shell-escape flag needed for minted
$latex = 'latex  %O  --shell-escape %S';
$pdflatex = 'pdflatex  %O  --shell-escape %S';
