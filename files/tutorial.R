# Script para realização de todas as tarefas deste tutorial do R

#Definir o Working Directory
setwd("~/Documentos/aula_R")

#Carregar o pacote gplots
library(gplots)

#Criar os objetos idade e nome
idade <- 26
nome <- "Diego"

#Criar o vetor idade_todos
idade_todos <- c(26, 22, 21, 21, 20, 21)

#Criar o vetor nomes
nomes <- c("João", "Rafael", "Luana", "Rodrigo", "Fabiana", "Gabriela")

#Criar o data frame unindo os vetores idade_todos e nomes e salvar como o objeto chamado data
data <- as.data.frame(cbind(nomes, idade_todos))

#Fazer cálculos de estatística descritiva do vetor idade_todos
mean(idade_todos)
sd(idade_todos)
min(idade_todos)
max(idade_todos)
summary(idade_todos)

#Importar o arquivo dados.txt
dados <- read.table("dados.txt", header=TRUE, dec=",")

#Calcular estatísticas descritivas das colunas peso e altura
summary(dados$peso)
summary(dados$altura)

#Plotar o histograma do peso e da altura e um gráfico de dispersão e salvar cada um deles em um arquivo em pdf diferente
pdf("hist_peso.pdf")
hist(dados$peso)
dev.off()

pdf("hist_altura.pdf")
hist(dados$altura)
dev.off()

pdf("dispersao.pdf")
plot(dados$peso, dados$altura)
dev.off()

#Criar a variável imc e acrescentá-la à planilha dados e em seguida salvar em um novo arquivo dados_atualizados.txt
imc <-  dados$peso / (dados$altura * dados$altura)
dados <- cbind(dados, imc)
write.table(dados, file="dados_atualizados.txt", dec=",", row.names=FALSE)