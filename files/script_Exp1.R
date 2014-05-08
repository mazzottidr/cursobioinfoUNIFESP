#Definir Working Directory
setwd("~/aulaExp1")

#Importar arquivos e salvar nos objetos grupoA e grupoB
grupoA <- read.table("grupoA.txt", header=T, dec=",")
grupoB <- read.table("grupoB.txt", header=T, dec=",")

#Calcular DeltaCt do grupo A e B, e salvar em seus respectivos objetos
deltactA <- grupoA$CT_alvo - grupoA$CT_endo
deltactB <- grupoB$CT_alvo - grupoB$CT_endo

#Calcular media do DeltaCt de cada grupo e mostrar na tela
print("Media Delta Ct grupo A:")
print(mean(deltactA))
print("Media Delta Ct grupo B:")
print(mean(deltactB))

#Fazer o teste t comparando DeltaCt do grupo A versus grupo B e mostrar na tela
resultado_testet <- t.test(deltactA, deltactB)
print(resultado_testet)

#Calcular o Fold Change usando o grupo A como referencia
foldchange <- 2^-(mean(deltactB)-mean(deltactA))
print("Fold Change (A como referencia):")
print(foldchange)

#Criar um boxplot com os valores de 2^-deltaCt de cada grupo

#Primeiro, calcular 2^-deltaCt para cada grupo:
expressaoA <- 2^-(deltactA)
expressaoB <- 2^-(deltactB)

#Depois, criar o boxplot, salvando-o num arquivo .pdf
pdf("boxplot.pdf")
boxplot(expressaoA,expressaoB, names=c("Grupo A", "Grupo B"), ylab="2^-deltaCt")
dev.off()
