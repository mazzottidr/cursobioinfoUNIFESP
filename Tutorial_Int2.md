###Tutorial Int2 - Busca de informações básicas sobre unidades genéticas usando ferramentas disponíveis em bancos de dados.

Prof. Diego Mazzotti

e-mail: mazzottidr@gmail.com

---

Neste tutorial será mostrado como buscar informações básicas a respeito de unidades genéticas (genes, sequências, variantes, etc) em bancos de dados comumente usados para este fim.

Links para os bancos de dados e ferramentas:

* **UCSC Genome Browser:** http://genome.ucsc.edu/
* **Ensembl:** http://www.ensembl.org/index.html
* **NCBI:** http://www.ncbi.nlm.nih.gov/
* **DGV:** http://projects.tcag.ca/variation/
* **OMIM:** http://www.ncbi.nlm.nih.gov/omim
* **Primer3:** http://bioinfo.ut.ee/primer3/
* **BLAST:** http://blast.ncbi.nlm.nih.gov/Blast.cgi

###Usando as ferramentas do UCSC Genome Browser

O **UCSC Genome Browser** é um dos mais utilizados *Genome Browsers* ou mecanismos de busca pelo genoma, por permitir integração com diversos outros bancos de dados em genética e genômica. Esta ferramenta permite o usuário varrer regiões específicas do genoma por meio de uma série de termos de busca como o nome do gene (ex: *TP53* ) ou uma determinada coordenada genômica (ex: chr22:19023795-19109967).

Para explorar esta ferramenta, inicie clicando em Genome Browser:

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSChome.png)

---
Em seguida, insira o nome de um gene na caixa de busca, como por exemplo *DGCR2*. Note que nesta tela, é possível selecionar alguns parâmetros como a espécie a ser estudada e a montagem ( *assembly* ) do genoma a ser pesquisado.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCSearch.png)

---
Ao clicar em *submit*, você será direcionado a uma página para refinar sua busca de acordo com os seus termos de pesquisa. No caso do *DGCR2*, há vários tipos de anotações diferentes, mas é possível notar que a grande maioria representa a mesma coordenada genômica (chr22:19023795-19109967). Como o objetivo é buscar uma região genômica específica, clicar em qualquer um deles irá redirecionar para a mesma região.

O resultado é a tela principal do UCSC Genome Browser. A figura abaixo mostra as principais informações que podem ser extraídas desta simples busca.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCMain.png)

---
Nesta tela é possível buscar diversas informações como a coordenada genômica com base na montagem do genoma escolhido, o tamanho da região compreendida (que em caso de ter sido feita a busca de um gene pelo nome, corresponde ao tamanho do gene), o cromossomo e a banda cromossômica que esta região está contida, além de uma série de anotações, ou *tracks*, que estão presentes nesta região selecionada.

**Navegação.** Use os botões de zoom in ou zoom out (1.5x, 3x e 10x) para ampliar ou reduzir a região de interesse. Use as setas (< << <<< ou > >> >>>) para mover regiões fixas, ou simplesmente clique e araste em qualquer lugar da área principal para navegar pelo genoma. Ao clicar e arrastar no cromossomo, um retângulo verde aparecerá e um aviso aparecerá perguntando se deseja "pular" para a região selecionada. è possível também realizar outra busca usando a caixa de pesquisa presente acima da área principal.

**Área principal.** Esta área é onde todas as informações importantes na região selecionada vão aparecer. Note que no *default* aparecem alguns *tracks* como a posição das bases, a banda cromossômica, os genes e transcritos contidos nessa região, regiões regulatórias (Ilhas CpG, regiões de ligação de fatores de transcrição, etc.), estimativas de conservação entre espécies e polimorfismos (SNPs) presentes na região. Ao deslocarmos a tela mais para baixo, é possível observar uma série de campos de seleção separados por tópicos. Estes campos apresentam o que e como os itens presentes nesta lista devem ser apresentados na área principal.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCFields.png)

---

* Como um exercício, tente deixar todos os campos selecionados em *hide* e aperte o botão *refresh*. O que aparece na área principal?
* Procure pelo campo *OMIM Genes* e coloque *pack* e clique em *refresh*. Navegue pelo *Genome Browser* e procure por regiões em verde escuro. Estas regiões referem-se a genes que já foram descritos como portadores de mutações causadoras de doenças.

Dessa maneira, é possível  manter na área princial, somente as informações relevantes. Os campos ainda apresentam as opções *dense, squish, pack, full* que correspondem a diferentes graus de densidade para a exibição das informações. Experimente alterar a densidade de alguns campos para ver o resultado na área principal.

**Explorando os** ***tracks.*** É possível obter uma série de informações detalhadas de cada *track*, por diversas ferramentas diferentes. Uma das ferramentas mais importantes é chamda de ***Table Browser***, localizada no menu *Tools>Table Browser*, na parte superior da tela.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/UCSCTable.png)

---

Esta ferramenta permite que o usuário faça o download de informações específicas referente a região selecionada em um formato de texto que pode ser importado pelo Excel ou outro software de planilhas para melhor visualização e análise dos dados. Ao clicar nesta ferramenta, uma tela com diversos campos e opções aparecem. Alguns exemplos de suas funcionalidades são mostrados abaixo:

1. **Buscar e gerar um arquivo com todos os genes e o número de éxons para cada gene de uma determinada região:**
    * No *Genome Browser*, busque a região desejada. No exemplo iremos buscar a região `chr19:32721680-34541465`, localizada em 19q13.11;
    * Vá ao *Table Browser* e ajuste os parâmetros para exportar os genes (representados pelo *track UCSC Genes* );
    * Selecione a tabela *knownGene* e verifique se *position* está selecionado e consta a região de interesse;
    * No campo *output format* selecione *selected fields from primary and related tables*. Isto permitira selecionar somente os campos de interesse, e não todos, evitando gerar uma tabela muito grande e de difícil interpretação;
    * Caso tenha interesse em salvar o resultado desta busca em um arquivo, escreva o nome do arquivo em *output file*. No exemplo vamos deixar em branco; ele irá abrir os resultados no próprio navegador;
    * Clique em *get output*. Você será redirecionado para um tela onde poderá escolher os campos que deseja que a tabela exporte. Vamos selecionar *name, chrom, strand, txStart, txEnd, exonCount, alias, geneSymbol, kgAlias, kgXref*. Note que estes campos poderão estar em outras tabelas na mesma página. Clique em *get output* para ver o resultado;
    * As informações serão abertas na janela do navegador. Aperte `CTRL+A`(selecionar tudo) e `CTRL+C` (copiar), abra um software de planilhas (Excel), clique na primeira célula (A1) e aperte `CTRL+V` (colar);
    * Muito provavelmente, todos os dados foram colados na primeira coluna, pois o arquivo de saída do *UCSC Genome Browser* é arquivo de texto (.txt) separado por espaços. Desta forma, no Excel, vá em *Dados >Texto para Colunas > Delimitado*, clique em *Espaço* e por fim *Concluir*;
    * Ao visualizar o arquivo agora de maneira formatada,  utilize seus conhecimentos em Excel e procure o gene com o maior número de éxons nessa região. Qual é o símbolo desse gene, quantos éxons ele tem e qual o sentido de sua transcrição? Quantas variantes de *splicing* este gene apresenta? Quantos éxons são mantidos em suas outras isoformas?
  

2. **Buscar e gerar um arquivo com todos os SNPs de um determinado gene:**
    * No *Genome Browser*, busque o gene desejado. No exemplo iremos buscar o gene *SLC6A3* localizado no cromossomo 5;
    * No *Table Browser*, selecione o *group* *Variations and Repeats* e o *track* *All SNPs*, para que seja criada uma tabela com todos os SNPs já catalogados no banco de dados *dbSNP build 137* ;
    * Verifique se a posição está correta (para o gene *SLC6A3* deve ser `chr5:1392905-1445543`);
    * Verifique se em *output format* está selecionado *selected fields from primary and related tables* e clique em *get output*;
    *  Na página seguinte, selecione os seguintes campos: *chrom, chromStart, chromEnd, name, alleles, class, func* e *alleleFreqs* e clique em *get output* ;
    *  Copie o arquivo gerado para o Excel, da mesma maneira que no tópico anterior. **Dica:** Provavelmente, no *alleleFreqs* haverá alguns polimorfismos com frequência de 100% (1.000000). No entanto, ao jogar este valor no Excel, ele poderá entender como o número "1 milhão", pois o delimitador decimal no Excel em Portugês é o vírgula e não o ponto. Para contornar este problema, copie a saída no bloco de notas, substitua vírgulas (",") por ponto-e-vírgulas (";") e por fim substitua pontos (".") por vírgulas (","). Isso permitirá a visualização adequada do arquivo no Excel. Não esqueça das etapas de transformar texto em colunas, como no tópico anterior;
    * Utilize seus conhecimentos em Excel para saber quantos SNPs ( *single nucleotide polymorphisms* - marcados como *single* no campo *class* ) o gene *SLC6A3* apresenta e quantos destes causam troca de aminoácido na proteína codificada por este gene (marcados como *missense* no campo *func*).

3. **Buscar informações específicas sobre uma determinada variante:**
    * No *Genome Browser*, habilite o *track* *Common SNPs (137)* como *pack* e aperte *refresh* ;
    * Digite na busca o nome de uma variante pelo seu código de identificação 'rs'. No exemplo usaremos o `rs2548755`, localizado no cromossomo 5;
    * Na área prinicpal, clique sobre o nome da variante. Aparecerá uma tela mostrando diversas informações deste polimorfismo. Identifique a coordenada genômica exata deste polimorfismo. Quais são os possíveis alelos, e qual a frequência de cada um deles? Qual a função deste polimorfismo?


###Usando as ferramentas do Ensembl
O Ensembl é outro banco de dados muito utilizado em genética. Uma das principais diferenças e organizar algumas informações a respeito das unidades genéticas de maneira mais fácil, permitindo assim uma melhor interface de usuário. Algumas desvantagens acontecem em relação ao fato de precisar necessitar de muitos cliques para conseguir realizar uma tarefa. De qualquer maneira, o UCSC e o Ensembl se complementam e a maioria acaba usando ambos para uma busca mais refinada.

A página inicial do Ensembl já mostra um campo de pesquisa e permite o usuário selecionar a espécie de interesse.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/EnsemblHome.png)

---

Na caixa de busca é possível colocar símbolos de genes, identificadores de variantes ou coordenadas genômicas.

* Experimente buscar o gene *JAK2* na espécie humana. Vá seguindo as orientações das páginas que aparecem até chegar na tela abaixo.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/EnsemblGene.png)

---

Esta página apresenta diversas informações sobre o gene, incluindo a localização e coordenada genômica, número de transcritos, símbolos, entre outros. Há também um simples navegador que permite visualizar seu contexto genômico.

O menu localizado do lado esquerdo mostra outras funcionalidades deste banco de dados. Clicando por exemplo em *Sequence*, é possível observar a sequência inteira do gene, com anotações representativas dos éxons (marcadas em laranja e com fonte vermelha). Caso o usuário tenha interesse em saber a sequência de determinada região, este é um ótimo lugar para buscá-la.

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/EnsemblSeq.png)

---

Ao clicar no botão *Configure this page* localizado do lado esquerdo, no menu, é possível alterar algumas configurações como a quantidade de bases que devem ser mostradas antes ou depois do gene, e um campo que permite selecionar se variantes devem ser anotadas na sequência. Clicando em  *Show variantions > Yes and show links*, ao fechar a janela, a página será atualizada e todas as variantes serão agora mostradas na sequência, com códigos representando as trocas de base e com links para a página das variantes. Para mais informações sobre os códigos IUPAC para representação de ambiguidade de bases nitrogenadas [clique aqui](http://www.bioinformatics.org/sms/iupac.html).

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/EnsemblVar.png)

---
Embora poluída, esta tela pode trazer uma impressão visual da quantidade de variações que uma determinada região apresenta e pode facilitar a escolha de regiões para se desenhar *primers* para uma reação em cadeia da polimerase (PCR).

Vamos olhar alguma dessas variações com mais detalhes. Procure pelo rs186035146, representado pela letra W, no terceiro éxon do gene. Clique no link correspondente. A seguinte tela aparecerá:

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/EnsemblSNP.png)

---
Esta tela mostra diversas informações sobre esta variante. Tente procurar quais são os alelos, desta variante e a frequência do alelo raro ( *minor allele frequency* - MAF). Explore os diversos menus que esta tela oferece para se familiarizar com o que esta interface pode oferecer.

Em seguida, suponha que um pesquisador tenha interesse em estudar esta variante. Uma possível aplicação para facilitar o estudo é realizar uma PCR para amplificar um fragmento que contém esta variante. Entre no menu *Flanking sequence*. A sequência que flanqueia essa variante será representada, juntamente com outras variações que já foram identificadas nessa região.

Para prosseguir com o desenho da PCR, primeiramente é preciso desenhar os *primers* que amplificarão um fragmento que contém a nossa variante de interesse. Para esta tarefa, usaremos o software **Primer3**, uma ferramenta que desenha pares de *primers* dada uma determinada sequência.

###Usando o Primer3

Para este exemplo, usaremos as configurações padrão do software. A página inicial do Primer3 é a seguinte:

![] (https://raw.github.com/mazzottidr/cursobioinfoUNIFESP/master/Images/Primer3Home.png)

---

* Copie a sequência que flanqueia a variante de interesse, derivada do Ensembl e cole no campo correspondente do Primer3. Note que há quebras de linha (a sequência não vai até o fim do campo do Primer3). Remova estas quebras manualmente para que a sequência não seja corrompida (cuidado para não apager nenhuma base!).
* Em seguida procure pela variante de interesse (representada por um W), e coloque-a entre colchetes ([W]). Isso indicará ao software que esta região deverá estar contida no fragmento a ser amplificado (Dica: use `CTRL+F` para realizar uma busca na página, e digita W - todos os "Ws" irão ficar acesos e ficará mais fácil de encontrar a variante!)
* Clique em *Pick primers*. Na página seguinte, será mostrado um arquivo listando os principais pares de *primers* que puderam ser desenhados para amplificar a região contendo a variante. Tente buscar nesta página onde estão as sequências do *primer*, o tamanho do fragmento a ser amplificado e a temperatura de *melting* (Tm).

---

Agora que já temos uma lista de possíveis pares de *primers* que poderão ser usados para amplificar um fragmento com a variante de interesse, precisamos verificar se estes *primers* são específicos e não se anelam em outras regiões do genoma. Para esta tarefa, usaremos o mecasimo de busca chamado **BLAST** ( *Basic Local Alignment Search Tool* ).

###Usando o BLAST

Esta ferramenta tem em seu banco de dados sequências anotadas de DNA e proteína de diversas espécies. É uma das ferramentas mais utilizadas para alinhamento de sequências e genomas, mas não funciona muito bem quando precisamos alinhar muitas sequências pequenas em um único genoma grande de referência (comumente realizado durante a análise de sequenciamento de nova geração pelo alinhador 'bwa', que será abordado mais adiante no curso).

A interface é intuitiva, mas devido à grande quantidade de funções, pode causar confusão dependendo do que o usuário pretende buscar. No nosso caso, iremos realizar o que é chamado de *nucleotide blast*.

* Na página inicial do BLAST, clique em *nucleotide blast*;
* No campo de pesquisa *Enter Query Sequence*, coloque um dos *primers* desenhados pelo Primer3;
* Clique em BLAST e aguarde o resultado. Pode demorar alguns segundos (imagine que sua sequencia está sendo procurada no genoma inteiro de centenas de espécies diferentes!)
* Na tela de saída, será apresentada uma lista de regiões que a sua sequência ( *primer* ) alinhou. A lista está ordenada pela maior probailidade do alinhamento. Note que para a sequência do *primer* *forward* `TATAATTCCCTCGCTCCCGC`(primeiro resultado da busca do Primer3), o primeiro item que aparece é `Homo sapiens Janus kinase 2 (JAK2), RefSeqGene on chromosome 9`. Isso é um bom sinal, pois alinhou onde esperávamos. Perceba o valor do parâmetro "E value". Quando menor este valor, maior a probabilidade de maior parte da sequência alinhar naquela região. Compare o valor deste alinhamento com outros alinhamentos. Para mais informações sobre o "E value" do BLAST, [clique aqui](http://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=FAQ#expect).
* Repita a operação com o *primer* *reverse* (no caso `GCGATAAAGGACAGCACACC`). Como são os alinhamentos e seus "E values"?

Com estas informações é possível ter uma ideia da especificiade dos *primers* e se há elevada probabilidade deles se anelarem em outras regiões do genoma. Os resultados do exemplo acima mostraram que estes *primers* parecem bem específicos para amplificar a região do gene *JAK2* que contém a variante de interesse.

Existem outras ferramentas como a ***In-Silico PCR***, do *UCSC Genome Browser*, que também é útil para saber se os seus *primers* irão amplificar somente uma única região.

* No *UCSC Genome Browser*, vá ao menu *Tools > In-Silico PCR*;
* Selecione o genoma e a montagem desejada, insira os *primers forward* e *reverse* e clique em *submit*;
* Em uma situação ideal, somente um fragemento deverá aparecer, juntamente com sua coordenada genômica. Isso significa que esta combinaçao de *primer* irá amplificar somente esta região do genoma humano. Use os conhecimentos treinados neste tutorial e verifique no *Genome Browser* se a coordenada genômica corresponde ao gene e inclui a variante de interesse, clicando sobre o link da coordenada genômica (Dica: Talvez seja preciso pedir para mostrar o *track* que inclui todos os SNPs, e não somente o com frequência de > 1% na população!).

___

Com estes exercícios, foi possível explorar as principais ferramentas disponíveis em bancos de dados em genética. Estes bancos de dados apresentam outras ferramentas poderosas e específicas em bioinformática que podem ser necessárias em outras aplicações. No entanto, os exercícios apresentados serviram como uma introdução e tiveram como objetivo a aproximação e familiaridade com as ferramentas. Outras aplicações podem ser encontradas na própria página destes bancos de dados.

###Aula prática

Para aplicar os conhecimentos aprendidos, escolha um gene e uma variante da tabela abaixo e responda as perguntas presentes no link abaixo:

https://docs.google.com/forms/d/1Ih2BwN41aKpns0h5lGrDqajfQGijuyEmlaoH8ZAi_f0/viewform


Símbolo do Gene        | Nome do Gene           | Identificador da variante
---|---|---
*APOE* | apolipoprotein E precursor | rs429358
*HBB* | hemoglobin subunit beta | rs334
*F5* | coagulation factor V precursor | rs6025
*MTHFR* | methylenetetrahydrofolate reductase | rs1801133
*PRNP* | major prion protein preproprotein | rs11538766 
*BDNF* | brain-derived neurotrophic factor isoform b preproprotein | rs6265
*TNF* | tumor necrosis factor | rs1800629
*IL6* | interleukin-6 precursor | rs1800797
*FTO*| alpha-ketoglutarate-dependent dioxygenase FTO | rs9939609 
*ADA* | adenosine deaminase | rs73598374
*PPARA* | peroxisome proliferator-activated receptor alpha | rs1800206
