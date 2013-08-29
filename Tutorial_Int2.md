###Tutorial Int2 - Aula prática
Tutorial para a aula prática Int2
*Busca de informações básicas sobre unidades genéticas usando ferramentas disponíveis em bancos de dados.*

Prof. Diego Mazzotti
e-mail: mazzottidr@gmail.com

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

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSChome1.png)

---
Em seguida, insira o nome de um gene na caixa de busca, como por exemplo *DGCR2*. Note que nesta tela, é possível selecionar alguns parâmetros como a espécie a ser estudada e a montagem (*assembly*) do genoma a ser pesquisado.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCSearch1.png)

---
Ao clicar em *submit*, você será direcionado a uma página para refinar sua busca de acordo com os seus termos de pesquisa. No caso do *DGCR2*, há vários tipos de anotações diferentes, mas é possível notar que a grande maioria representa a mesma coordenada genômica (chr22:19023795-19109967). Como o objetivo é buscar uma região genômica específica, clicar em qualquer um deles irá redirecionar para a mesma região.

O resultado é a tela principal do UCSC Genome Browser. A figura abaixo mostra as principais informações que podem ser extraídas desta simples busca.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCMain1.png)

---
Nesta tela é possível buscar diversas informações como a coordenada genômica com base na montagem do genoma escolhido, o tamanho da região compreendida (que em caso de ter sido feita a busca de um gene pelo nome, coressponde ao tamanho do gene), o cromossomo e a banda cromossômica que esta região está contida, além de uma série de anotações, ou "*tracks*", que estão presentes nesta região selecionada.

**Navegação.** Use os botões de zoom in ou zoom out (1.5x, 3x e 10x) para ampliar ou reduzir a região de interesse. Use as setas (< << <<< ou > >> >>>) para mover regiões fixas, ou simplesmente clique e araste em qualquer lugar da área principal para navegar pelo genoma. Ao clicar e arrastar no cromossomo, um retângulo verde aparecerá e um aviso aparecerá perguntando se deseja "pular" para a região selecionada. è possível também realizar outra busca usando a caixa de pesquisa presente acima da área principal.

**Área principal.** Esta área é onde todas as informações importantes na região selecionada vão aparecer. Note que no *default* aparecem alguns *tracks* como a posição das bases, a banda cromossômica, os genes e transcritos contidos nessa região, regiões regulatórias (Ilhas CpG, regiões de ligação de fatores de transcrição, etc.), estimativas de conservação entre espécies e polimorfismos (SNPs) presentes na região. Ao deslocarmos a tela mais para baixo, é possível observar uma série de campos de seleção separados por tópicos. Estes campos apresentam o que e como os itens presentes nesta lista devem ser apresentados na área principal.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCFields.png)

---

* Como um exercício, tente deixar todos os campos selecionados em "*hide*" e aperte o botão "*refresh*". O que aparece na área principal?

Dessa maneira, é possível  manter na área princial, somente as informações relevantes. Os campos ainda apresentam as opções * dense, squ 
