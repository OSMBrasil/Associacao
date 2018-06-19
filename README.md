# Associacao
Repositório para preservação e gestão das atualizações dos documentos e dados oficiais da Associação OSM Brasil

Para maiores informações, confira a "home da Associação" em [wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associação](https://wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associa%C3%A7%C3%A3o).

## Organização dos originais e backups

* Na Wiki manter resumos e extratos consolidados, a `wiki.openstreetmap.org` continua sendo a principal referência.

* No google-docs manter os "documentos em construção".<br> Quando possível os documentos mais simples podem ser convertidos de volta para a Wiki usando `pandoc` da versão HTML, senão fazer backup do documento aqui neste *git* e manter versão TXT para um controle mais fino das versões e modificações.

<!-- Documentos oficiais devem ser mantidos em formato [*markdown `gfm`*](https://pandoc.org/MANUAL.html) (Github-Flavored Markdown) neste repositório, <br/>depois salvos como TXT e HTML pelo Google-doc (e convertidos para `.md` pelo `pandoc`).  -->

* Dados oficiais devem ser mantidos em formato CSV e descritos por `datapackage.json` conforme [padrão FrictionlessData](https://frictionlessdata.io/specs/), podendo ser diretamente baixados do Google-spreadsheet.

## Organização das pastas deste repositório

* [**`docs`**](docs) = documentos markdown oficiais ou históricos (prova de existência) organizados por tema. <br/>Interfaces para edição colaborativa:
   - [gdoc do `estatuto~v0_3`](https://docs.google.com/document/d/1NRKuSBQ1R3FeeUa1jiAm9FlIHMHAwIPy_yiQxtk1OcI/), rascuhos v0.3.X do Estatuto.    <br/>Principais commits resumidos no TXT: [diff v0.3.0](https://github.com/OSMBrasil/Associacao/commit/87bea472957ffa5aba3c6c59cdf430b58afa7d65), [diff v0.3.1](https://github.com/OSMBrasil/Associacao/commit/1bd6d0d6cf71ee4800e5054933c92dc9d2d2e185)... 

* [**`data`**](data) = dados CSV homologados pelo [Goodtables](https://goodtables.io). Interfaces para edição colaborativa:
   - [planilha gdoc das **rodadas**](https://docs.google.com/spreadsheets/d/1SRDBxdaOn78dqAzXK4TbJMReCBUGrBBc0PHpX-a5c6I/) = Resultados das "rodadas de discussão estruturada e votação", todas as planilhas disponíveis ao público (dados não-sigilosos).<br/>Backup nos arquivos `data/rodada*.csv`  sumarizados em [`rodadas_info.txt`](data/rodadas_info.txt).

* [**`assets`**](data) = imagens e outros recursos dos docs.

* `index.htm` = opção para transformar os docs em site gratis no Github.

-----------

## Preparo

* use `git config --global core.autocrlf input` para garantir final de linha padrão Linux nos arquivos de código-fonte (.txt, .csv, .html, etc.). Ver também [.gitattributes](https://stackoverflow.com/a/40821931/287948).
* converter de HTML para markdown com `pandoc -f html-native_divs-native_spans -t gfm`.
* ...

## Licenças

[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/deed.pt_BR): todos os dados e conteúdos deste repositório são livres, mas se precisar o controle de versões é de exclusividade do grupo "tentando fundar a OSM Brasil".

