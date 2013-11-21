@default_files = ('Thesis.tex');
$bibtex = 'biber';
$bibtexsrcs = 'Bibliography.bib';
$pdflatex = 'lualatex %O %S';
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;

add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
   sub makeglossaries {
      system( "makeglossaries \"$_[0]\"" );
   }