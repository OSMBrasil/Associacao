# Associacao
Repositório para preservação e gestão das atualizações dos documentos e dados oficiais da Associação OSM Brasil

Para maiores informações, confira a "home da Associação" em [wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associação](https://wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associa%C3%A7%C3%A3o).

## Organização dos backups e originais
* Na Wiki manter resumos e extratos consolidados, a `wiki.openstreetmap.org` continua sendo a principal referência.
* No google-docs manter apenas os "documentos em construção" ou cópia para geração de multiplos formatos (PDF, docx, etc.)
* Documentos oficiais devem ser mantidos em formato [*markdown `gfm`*](https://pandoc.org/MANUAL.html) (Github-Flavored Markdown) neste repositório, <br/>depois salvos como TXT e HTML pelo Google-doc (e convertidos para `.md` pelo `pandoc`).  
* Dados oficiais devem ser mantidos em formato CSV e descritos por `datapackage.json` conforme [padrão FrictionlessData](https://frictionlessdata.io/specs/), podendo ser diretamente baixados do Google-spreadsheet.

## Organizaçao das pastas deste repositório

* [`docs`](docs) documentos markdown oficiais ou históricos (prova de existência) organizados por tema.
* [`data`](data) dados CSV homologados pelo [Goodtables](https://goodtables.io).
* [`assets`](data) imagens e outros recursos dos docs.
* `index.htm` opção para transformar os docs em site gratis no Github.

-----------

## Preparo

* use `git config --global core.autocrlf true` para garantir final de linha padrão Linux nos arquivos de código-fonte (.txt, .html, .md etc.).
* converter de HTML para markdown com `pandoc -f html-native_divs-native_spans -t gfm`.
* ...

## Licenças

[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/deed.pt_BR): todos os dados e conteúdos deste repositório são livres, mas se precisar o controle de versões é de exclusividade do grupo "tentando fundar a OSM Brasil".

