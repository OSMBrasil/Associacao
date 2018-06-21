#!/usr/bin/perl
use warnings;
use strict;
use utf8;

##
## Conta palavras com critérios sensatos. Faz scan na pasta.
##

print STDERR "\n-- Conta palavras de arquivos UTF8 .TXT ou .MD  desta pasta... aguarde.";
my $OUT = '';
my @ls= `ls *txt *.md | grep -v README.md`;  ## falta if argc arquivo especifico  ## bug find . -iregex '.*\.\(md\|txt\)'
chomp @ls;
foreach my $f(@ls) {
        my $n=0; my $n2=0; my $n_tudo=0; my $txt='';
	open(my $fh, '<:encoding(UTF-8)', $f) or die "Could not open file '$f' $!";
	while (my $row = <$fh>) { $txt .= $row; }
	foreach my $palavra( split(/[\s\r\n\t\.\?\!\*\(\):,;="]+/s, $txt) ) {  ## testar
	  $n_tudo++;
	  $n++  if ($palavra !~ m/\d/);   # nao-digitos
	  $n2++ if ($palavra =~ m/^\p{L}[\-\p{L}]+$/);  # nao-digitos e com 2 ou mais letras válidas
	  # debug if (length($palavra)>1 && $palavra !~ m/^\p{L}[\-\p{L}]+$/) {$OUT.= "\n\t\t BUG COM $palavra";}
	}
	$OUT .= "\n --- $f ----";
	$OUT .= "\n coisas = $n_tudo\n palavras (nao-digitos) = $n\n palavras com 2 ou mais letras = $n2\n\n";
}
print "\n$OUT\n"; ## falta opcao CSV
print STDERR "\n---\n";




