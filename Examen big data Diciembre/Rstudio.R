library(dplyr)
library(ggplot2)
library(readxl)
nombre<-c("Avengers: Endgame","avatar","Titanic","Star Wars: Episodio VII","Avengers: Infinity war")
distribuidor<-c("Walt Disney Pictures","20th Century Fox","20th Century Fox","Walt Disney Pictures","Walt Disney Pictures")
presupuesto<-c(356000000,237000000,200000000,245000000,356000000)
anio<-c(2019,2009,1997,2015,2018)

df<-data.frame(nombre,distribuidor,presupuesto,anio)

g<-ggplot(df)
g<-g+aes(x=presupuesto,y=anio)
g<-g+geom_line(linetype=2,size=2, alpha=0.5, colour="green")
g<-g+ggtitle("Presupuesto según año de producción")
g

ga<-ggplot(df)
ga<-ga+aes(x=nombre,fill=distribuidor)
ga<-ga+scale_fill_manual(values = c("#BE81F7","#04B4AE"))
#pongo en el eje x películas porque en mi grafica no tiene ningún sentido
ga<-ga+xlab("Películas")
ga<-ga+ylab("Empresa distribuidora")
ga<-ga+ggtitle("Películas distribuidas",subtitle="Walt Disney Pictures y 20th Century Fox")
ga<-ga+geom_bar()
ga

gra<-ggplot(df)
gra<-gra+ aes()
gra<-gra+geom_bar()
gra<-gra+coord_polar("y")
gra


variable<-filter(df,nombre=="Walt Disney Pictures")



