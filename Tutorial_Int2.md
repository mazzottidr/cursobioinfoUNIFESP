###Tutorial Int2 - Aula prática
Tutorial para a aula prática Int2
*Busca de informações básicas sobre unidades genéticas usando ferramentas disponíveis em bancos de dados.*

Prof. Diego Mazzotti

---

Neste tutorial será mostrado como buscar informações básicas a respeito de unidades genéticas (genes, sequências, variantes, etc) em bancos de dados comumente usados para este fim.

Links para os bancos de dados e ferramentas a serem utilizados:

* **UCSC Genome Browser:** http://genome.ucsc.edu/
* **Ensembl:** http://www.ensembl.org/index.html
* **NCBI:** http://www.ncbi.nlm.nih.gov/
* **DGV:** http://projects.tcag.ca/variation/
* **OMIM:** http://www.ncbi.nlm.nih.gov/omim
* **Primer3:** http://bioinfo.ut.ee/primer3/
* **BLAST:** http://blast.ncbi.nlm.nih.gov/Blast.cgi

###Usando as ferramentas do UCSC Genome Browser

<dd>O UCSC Genome Browser é um dos mais utilizados *Genome Browsers* ou mecanismos de busca pelo genoma, por permitir integração com diversos outros bancos de dados em genética e genômica. Esta ferramenta permite o usuário varrer regiões específicas do genoma por meio de uma série de termos de busca como o nome do gene (ex: *TP53* ) ou uma determinada coordenada genômica (ex: chr22:19023795-19109967).

Para explorar esta ferramenta, inicie clicando em Genome Browser:

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSChome.png)

---
Em seguida, insira o nome de um gene na caixa de busca, como por exemplo *DGCR2*. Note que nesta tela, é possível selecionar alguns parâmetros como a espécie a ser estudada e a montagem (*assembly*) do genoma a ser pesquisado.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCSearch.png)

---
Ao clicar em *submit*, você será direcionado a uma página para refinar sua busca de acordo com os seus termos de pesquisa. No caso do *DGCR2*, há vários tipos de anotações diferentes, mas é possível notar que a grande maioria representa a mesma coordenada genômica (chr22:19023795-19109967). Como o objetivo é buscar uma região genômica específica, clicar em qualquer um deles irá redirecionar para a mesma região.

O resultado é a tela principal do UCSC Genome Browser. A figura abaixo mostra as principais informações que podem ser extraídas desta simples busca.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCMain.png)

---
