<?php
if ($argc<2) exit("\nfalta indicar o nome do arquivo\n");
$palavras = preg_split('/[\s\r\n\t\.\?\!\:,;]+/', file_get_contents($argv[1]), -1, PREG_SPLIT_NO_EMPTY);
$n=$n2=$n_tudo=0;
foreach($palavras as $palavra) {
  $n_tudo++;
  if (!preg_match('/\d/',$palavra))           $n++;  //nao-digitos
  if (preg_match('/^\p{L}\p{L}+$/',$palavra)) $n2++; //nao-digitos e com 2 ou mais letras
}
print "\n --- contando palavras de $argv[1] ----";
print "\n coisas = $n_tudo\n palavras (nao-digitos) = $n\n palavras com 2 ou mais letras = $n2\n\n";
