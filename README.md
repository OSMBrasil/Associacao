# Associacao
Repositório para preservação e gestão das atualizações dos documentos e dados oficiais da Associação OSM Brasil

Para maiores informações, confira a "home da Associação" em [wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associação](https://wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associa%C3%A7%C3%A3o).

## Organização dos backups e originais
* Na Wiki manter resumos e extratos consolidados, a `wiki.openstreetmap.org` continua sendo a principal referência.
* No google-docs manter apenas os "documentos em construção" ou cópia para geração de multiplos formatos (PDF, docx, etc.)
* Documentos oficiais devem ser mantidos em formato [*markdown `gfm`*](https://pandoc.org/MANUAL.html) (Github-Flavored Markdown) neste repositório, <br/>depois salvos como TXT e HTML pelo Google-doc (e convertidos para `.md` pelo `pandoc`).  
* Dados oficiais devem ser mantidos em formato CSV e descritos por `datapackage.json` conforme [padrão FrictionlessData](https://frictionlessdata.io/specs/), podendo ser diretamente baixados do Google-spreadsheet.

## Organização das pastas deste repositório

* [**`docs`**](docs) = documentos markdown oficiais ou históricos (prova de existência) organizados por tema. Interfaces para edição colaborativa:
   - [estatuto~v0_3](https://docs.google.com/document/d/1NRKuSBQ1R3FeeUa1jiAm9FlIHMHAwIPy_yiQxtk1OcI/), rascuhos v0.3.X do Estatuto. Principais commits resumidos no TXT: [diff v0.3.1](https://github.com/OSMBrasil/Associacao/commit/87bea472957ffa5aba3c6c59cdf430b58afa7d65), ...
   
* [**`data`**](data) = dados CSV homologados pelo [Goodtables](https://goodtables.io). Interfaces para edição colaborativa:
   - [rodadas](https://docs.google.com/spreadsheets/d/1SRDBxdaOn78dqAzXK4TbJMReCBUGrBBc0PHpX-a5c6I/) de discussão estruturada e votação, todas as planilhas disponíveis ao público (dados não-sigilosos).

* [**`assets`**](data) = imagens e outros recursos dos docs.

* `index.htm` = opção para transformar os docs em site gratis no Github.

-----------

## Preparo

* use `git config --global core.autocrlf true` para garantir final de linha padrão Linux nos arquivos de código-fonte (.txt, .html, .md etc.).
* converter de HTML para markdown com `pandoc -f html-native_divs-native_spans -t gfm`.
* ...

## Licenças

[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/deed.pt_BR): todos os dados e conteúdos deste repositório são livres, mas se precisar o controle de versões é de exclusividade do grupo "tentando fundar a OSM Brasil".

