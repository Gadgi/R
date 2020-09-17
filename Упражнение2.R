#Упражнение2
#2.1
n<-1
reg<-c('Адыгея','Ставропольский край','Краснодарский край')#Вектор областей
years<-c(2017,2018)#Вектор годов
quarter<-c('1-й квартал','2-й квартал','3-й квартал','4-й квартал')#Кварталы
#paste-совмещение значений,rep-повторение
file.names<-c(paste(rep(reg,each=24),paste0("Y",rep(years,each=4)),"Q",paste0(quarter,".csv"),sep="_"))
file.names#вывод

#2.2
num<-seq(from=n,to=n+5)#нумерация с n
flow<-c("импорт","экспорт")#товарный поток
okpd.code<-"26"
df.seq<-data.frame(num,region=rep(reg,each=2),flow,okpd.code)#фрейм данных
df.seq

#2.3
x.n<-rnorm(n=7,mean=15,sd=4)#Нормапьное 7 строк ср=15 стоткл=4
x.u<-runif(n=7,min=-7,max=29)#равномерное [-7;29]
x.t<-rt(n=7,df=3)#СВ по закону Стьюдента 3 степеней свободы
df.rand<-data.frame(x.n,x.u,x.t)#Фрейм случайных величин
df.rand
