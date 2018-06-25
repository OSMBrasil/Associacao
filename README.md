# Associacao
Repositório para preservação e gestão das atualizações dos documentos e dados oficiais da Associação OSM Brasil

Para maiores informações, confira a "home da Associação" em [wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associação](https://wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associa%C3%A7%C3%A3o). Para efeitos práticos  este repositório não é uma ferramenta de comunicação, é apenas um instrumento de "BACKUP OFICIAL".

## Organização dos originais e backups

* Na Wiki manter resumos e extratos consolidados, a `wiki.openstreetmap.org` continua sendo a principal referência.

* No google-docs manter os "documentos em construção".<br> Quando possível os documentos mais simples podem ser convertidos de volta para a Wiki usando `pandoc` da versão HTML, senão fazer backup do documento aqui neste *git* e manter versão TXT para um controle mais fino das versões e modificações.

<!-- Documentos oficiais devem ser mantidos em formato [*markdown `gfm`*](https://pandoc.org/MANUAL.html) (Github-Flavored Markdown) neste repositório, <br/>depois salvos como TXT e HTML pelo Google-doc (e convertidos para `.md` pelo `pandoc`).  -->

* Dados oficiais devem ser mantidos em formato CSV e descritos por `datapackage.json` conforme [padrão FrictionlessData](https://frictionlessdata.io/specs/), podendo ser diretamente baixados do Google-spreadsheet.

## Organização das pastas deste repositório

* [**`docs`**](docs) = documentos markdown oficiais ou históricos (prova de existência) organizados por tema.
   - `estatuto~v*.txt` reproddução mais recente acoplada a histórico git de alterações de versões menores, conforme identificador de versão formato *MAIOR.MENOR.CORRECAO* (por exemplo `estatuto~v0_3.txt` armazena *commits* de todas as subversões v0.3.1, v0.3.2, etc.).
   - pasta [`dumps`](docs/dumps) armazena copias de segurança dos documentos não-controlados, tais como formatos EPUB ou DOCX. Serão mantidos em [git-lfs](https://git-lfs.github.com).

* [**`data`**](data) = dados CSV homologados pelo [Goodtables](https://goodtables.io). Interfaces para edição colaborativa:
   - `rodada*.csv` =  planilhas dos resultados de todas as votações ou inscrições relativas às "[rodadas de discussão estruturada](https://wiki.openstreetmap.org/wiki/WikiProject_Brazil/Associação/Rodadas)" e  disponíveis ao público (dados não-sigilosos).
   - `*.txt` = arquivos de apoio, tais como `rodadas_info.txt` descrevendo os campos das planilhas `rodada*.csv`, ou arquivo [`_sha256d-sum.txt`](_sha256d-sum.txt) com a [soma de verificação](https://en.wikipedia.org/wiki/Checksum) SHA3 de reforço para cumprir padrões de [preservação digital](https://en.wikipedia.org/wiki/Digital_preservation) e prova de existência.

* [**`assets`**](data) = imagens originais (alta resolução ou vetorial) e outros recursos utilizados na composição dos documentos da pasta *docs*.

* `index.htm` = opção para transformar este repositório em site gratis no Github.

## Fontes temporárias

Estão neste momento disponíveis para edição:

* backups das [planilhas gdoc das **rodadas**](https://docs.google.com/spreadsheets/d/1SRDBxdaOn78dqAzXK4TbJMReCBUGrBBc0PHpX-a5c6I/) com os dados filtrados (sem e-mails ou demais dados pessoais). Depois de revisados em interface amigável no GDocs, ficamn permanentemente aqui no git. Os GDocs são apenas para edição colaborativa, podendo ser eliminados a qualquer tempo.

* Texto do Estatuto. O [gdoc do `estatuto~v0_3`](https://docs.google.com/document/d/1NRKuSBQ1R3FeeUa1jiAm9FlIHMHAwIPy_yiQxtk1OcI/) é apenas uma interface amigável para edição colaborativa, podendo ser eliminado a qualquer tempo.
   - [gdoc do `estatuto~v0_3`](https://docs.google.com/document/d/1NRKuSBQ1R3FeeUa1jiAm9FlIHMHAwIPy_yiQxtk1OcI/), rascuhos v0.3.X do Estatuto. Armazenados como TXT para destacar alterações relevantes.  Para visualizar todos os *commits*, basta visualizar no [modo *blame*](https://github.com/OSMBrasil/Associacao/blame/master/docs/estatuto~v0_3.txt). Principais commits e visualização das respectivas diferenças:  [diff v0.3.0](https://github.com/OSMBrasil/Associacao/commit/87bea472957ffa5aba3c6c59cdf430b58afa7d65), [diff v0.3.1](https://github.com/OSMBrasil/Associacao/commit/1bd6d0d6cf71ee4800e5054933c92dc9d2d2e185), [diff v0.3.2](https://github.com/OSMBrasil/Associacao/commit/b86e158d650d7e37f15722b6a4ac28d1f0c03bdc), [diff v0.3.3](https://github.com/OSMBrasil/Associacao/commit/37ec5bc438c579f8c270ec551c41459a05c70c94)... 

-----------

## Preparo

* use `git config --global core.autocrlf input` para garantir final de linha padrão Linux nos arquivos de código-fonte (.txt, .csv, .html, etc.). Ver também [.gitattributes](https://stackoverflow.com/a/40821931/287948).

* converter de HTML para markdown com `pandoc -f html-native_divs-native_spans -t gfm`.

* ...

## Licenças

[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/deed.pt_BR): todos os dados e conteúdos deste repositório são livres, mas se precisar o controle de versões é de exclusividade do grupo "tentando fundar a OSM Brasil".

