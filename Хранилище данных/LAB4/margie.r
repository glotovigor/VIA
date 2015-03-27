setwd("C:/Users/student/Desktop/123")
mydata<-read.table(file = "tunisia.txt", header = TRUE,sep="")
dim1 <- c(mydata[1:16,1], "�����")
dim2 <- c("���������", "���������", "���������", "���������", "�������", "����������", "��������")
dim3 <- c("��������", "����������", "��������", "��������", "�������", "������", "������", "����������","�����", "�����������", "�����", "�����", "������", "�������", "�����", "����", "���������", "����", "�����", "������")
alltable <- array(0, c(17,7,20), list(dim1, dim2,dim3))
alltable
vars <- c("��������", "Afganistan.txt", "��������", "��������", "�������", "������", "Georgia.txt", "����������","Syria.txt", "�����������", "�����", "tunisia.txt", "������", "�������", "Yemen.txt", "����.txt", "���������", "����", "�����", "Turkey.txt")
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
  barplot(sums[v,],xlab="������",ylab="���������� ����������",main=c("������� ���������� ", dim2[v],"��� ���� �����"),col=v)
  dev.off()
}
for (s in 1:20){
  if (sums[1,s]>0){
    png(filename = c(dim3[s],".png"), units="px", width = 1200, res = 96)
    barplot(sums[,s],xlab="��������������",ylab="���������� ����������",main=c("������� ���������� ������������� ��� ������", dim3[s]),col=s)
    dev.off()
  }
}
