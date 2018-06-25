## Dados oficiais

Resultados de enquetes, votações, tomadas de preço, planilhas contábeis, etc.

* arquivos `*.csv` estão em [fomato aberto CSV](https://frictionlessdata.io/specs/csv-dialect/), serão posteriormente descritos no arquivo [datapackage.json para cumprir recomendaçes Frictionlessdata](https://frictionlessdata.io/specs/data-package/). Exemplos:

   - `rodada*.csv` = planilhas dos resultados de todas as votações ou inscrições relativas às "[rodadas de discussão estruturada](https://wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associa%C3%A7%C3%A3o/Rodadas)" e disponíveis ao público (dados não-sigilosos).

* arquivos `*.txt` são arquivos TXT de apoio, com alguma descrição complementar temporária, a ser convertida para YUML ou JSON. Por exemplo `rodada_info.txt` descreve os campos das planilhas `rodada*.csv`.

* arquivo [`_sha256d-sum.txt`](_sha256d-sum.txt) é gerado automaticamente por [sha256d-sum.pl](https://github.com/OSMBrasil/Associacao/blob/master/assets/sha256d-sum.pl). <br/>É a [soma de verificação](https://en.wikipedia.org/wiki/Checksum) do padrão [DoubleSHA256 dos cartórios brasileiros](http://www.uniproof.com.br#valide-hash), com a finalidade de "reforço" para cumprir os padrões de [preservação digital](https://en.wikipedia.org/wiki/Digital_preservation) e prova de existência. <br/>PS: todos os arquivos de um repositório *git* já usam *checksum* SHA1, porém isso não satisfaz os padrões de preservação, por ser uma *hash* calculada com "nonce" e, principalmente, por ser [SHA1 insuficiente](http://alf.nu/SHA1) nos dias de hoje (SHA256 é mais seguro como prova de unicidade e existência). Juntas [SHA1 e SHA256 se reforçam](https://crypto.stackexchange.com/a/44281/42893).

-----

[VOLTAR](../README.md).
