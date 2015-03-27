setwd("C:/Users/student/Desktop/123")
mydata<-read.table(file = "tunisia.txt", header = TRUE,sep="")
dim1 <- c(mydata[1:16,1], "сумма")
dim2 <- c("Терроризм", "Террорист", "Оккупация", "Наркотики", "Насилие", "Демократия", "Развитие")
dim3 <- c("Молдовия", "Афганистан", "Киргизия", "Пакистан", "Украина", "Россия", "Грузия", "Узбекистан","Сирия", "Таджикистан", "Ливия", "Тунис", "Египет", "Израиль", "Йемен", "Ирак", "Палестина", "Иран", "Ливан", "Турция")
alltable <- array(0, c(17,7,20), list(dim1, dim2,dim3))
alltable
vars <- c("Молдовия", "Afganistan.txt", "Киргизия", "Пакистан", "Украина", "Россия", "Georgia.txt", "Узбекистан","Syria.txt", "Таджикистан", "Ливия", "tunisia.txt", "Египет", "Израиль", "Yemen.txt", "Ирак.txt", "Палестина", "Иран", "Ливан", "Turkey.txt")
for (s in c(2,7,9,12,15,16,20)) {
  mydata <- read.table(vars[s],header=TRUE)
  for (y in 1:16) {
    for (v in 1:7) {
      alltable [y,v,s] <- mydata[y,v+1] 
    }
  }
  for (v in 1:7) {
    alltable[y+1,v,s] <- sum(mydata[,v+1])
  }
}
supermax<-max(alltable)
sums<-alltable[17,,]
for (v in 1:7) {
  png(filename = c(dim2[v],".png"), units="px", width = 1200, res = 96)
  barplot(sums[v,],xlab="Страна",ylab="Количество упоминаний",main=c("Частота упоминаний ", dim2[v],"для ряда стран"),col=v)
  dev.off()
}
for (s in 1:20){
  if (sums[1,s]>0){
    png(filename = c(dim3[s],".png"), units="px", width = 1200, res = 96)
    barplot(sums[,s],xlab="Характеристика",ylab="Количество упоминаний",main=c("Частота упоминаний характеристик для страны", dim3[s]),col=s)
    dev.off()
  }
}
