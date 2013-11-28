@default_files = ('Thesis.tex');
$clean_ext = 'acn acr alg bbl glg glo gls xdy run.xml t.blg tex.blg';
$bibtex = 'biber';
$bibtexsrcs = 'Bibliography.bib';
$pdflatex = 'lualatex -shell-escape %O %S';
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;

add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
   sub makeglossaries {
      system( "makeglossaries \"$_[0]\"" );
   }