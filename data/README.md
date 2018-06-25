## Dados oficiais

Resultados de enquetes, votações, tomadas de preço, planilhas contábeis, etc.

* arquivos `*.csv` estão em [fomato aberto CSV](https://frictionlessdata.io/specs/csv-dialect/), serão posteriormente descritos no arquivo [datapackage.json para cumprir recomendaçes Frictionlessdata](https://frictionlessdata.io/specs/data-package/). Exemplos:

   - `rodada*.csv` = planilhas dos resultados de todas as votações ou inscrições relativas às "[rodadas de discussão estruturada](https://wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associa%C3%A7%C3%A3o/Rodadas)" e disponíveis ao público (dados não-sigilosos).

* arquivos `*.txt` são arquivos TXT de apoio, com alguma descrição complementar temporária, a ser convertida para YUML ou JSON. Por exemplo `rodada_info.txt` descreve os campos das planilhas `rodada*.csv`.

* arquivo [`_sha256d-sum.txt`](_sha256d-sum.txt) é a [soma de verificação](https://en.wikipedia.org/wiki/Checksum) SHA3 de reforço para cumprir os mais altos padrões de [preservação digital](https://en.wikipedia.org/wiki/Digital_preservation) e prova de existência. <br/>PS: por estarem em *git* totos os arquivos deste repositório já usam *checksum* SHA1, porém isso não satisfaz os padrões de preservação, por ser uma *hash* calculada com "nonce" e, principalmente, por ser SHA1 considerada nos dias de hoje insuficiente (SHA3 é mais seguro).

-----

[VOLTAR](../README.md).
