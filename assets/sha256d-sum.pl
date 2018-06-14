#!/usr/bin/perl
use warnings;
use strict;

##
## Gera DoubleSHA256 conforme convenções adotadas nos cartórios brasileiros (ex. Uniproof.com.br)
## reproduzindo o comportamento de `sha256sum *.* | grep -v $sfile`.
## Suporte ppkrauss, licença CC0.
##

my $sfile = "_sha256d-sum.txt";
print STDERR "\n-- Construindo impressões digitais DoubleSHA256... aguarde.";
my $OUT = '';
my @ls= `ls *.* | grep -v $sfile | grep -v README.md`;
chomp @ls;
foreach(@ls) {
  my $hash= `openssl dgst -sha256 -binary $_ | openssl dgst -sha256`;
  $hash = substr $hash, 8;
  $hash =~ s/^\s+//;
  $hash =~ s/\s+$//;
  $OUT .= "$hash  $_\n";
}
open my $fp, '>', "$sfile" or die $!;
print $fp $OUT;
print STDERR "\n-- Arquivo '$sfile' gerado com sucesso.\n\n";
