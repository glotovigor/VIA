setwd("C:/Хранилище данных")
mydata<-read.table(file = "Украина.txt", header = TRUE)
attach (mydata)
plot (Year,terrorism,xlab = "Год", ylab = "Терроризм",main = "Частота упоминаний характиристик для Украины", pch = 15, col = "red", type = "b", xlim = c(2000,2014), ylim = c(0,600000))
lines (Year, terrorist, xlim = c(2000,2014),pch = 16, col = "green", type = "b")
lines (Year, occupation, xlim = c(2000,2014),pch = 16, col = "blue", type = "b")
lines (Year, narcotic, xlim = c(2000,2014),pch = 16, col = "brown", type = "b")
lines (Year, violation, xlim = c(2000,2014),pch = 16, col = "orange", type = "b")
lines (Year, democracy, xlim = c(2000,2014),pch = 16, col = "black", type = "b")
lines (Year, development, xlim = c(2000,2014),pch = 16, col = "yellow", type = "b")
legend ("topleft", inset = 0.01, title = "Характеристики",c("терроризм", "террорист", "окупация", "наркотики", "насилие", "демократие", "развитие"), lty = c(1,1,1,1,1,1,1), pch = c(15,16,16,16,16,16,16), col = c("red", "green", "yellow", "orange","black", "blue", "brown"))


