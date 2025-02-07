# remover a lista de objetos

rm(list = ls ())

# Salvando no diret�rio 

getwd()
setwd("C:\\Users\\Carol\\Desktop\\Aula R")

# Ativar pacote

install.packages("tidyr")
library(tidyr)
library(tibble)
library(dplyr)

# Chamar base de dados 

df_regiao <- read.csv( "Alib (2).csv", encoding = "UTF-8")
View(df_regiao)

# Criar filtro 
# Faixa et�ria para informantes que falaram diabo

#Faixa et�ria I

df_faixa_etaria1 <- df_regiao %>% 
  select(Faixa.Et�ria,Deus.est�.no.c�u.e.no.inferno.est�....) %>% 
  filter(grepl('diabo', Deus.est�.no.c�u.e.no.inferno.est�...., ignore.case=TRUE))%>%
  filter(Faixa.Et�ria == '18 a 30 anos')
View(df_faixa_etaria1)

#Faixa et�ria II

df_faixa_etaria2 <- df_regiao %>%
  select(Faixa.Et�ria,Deus.est�.no.c�u.e.no.inferno.est�....) %>% 
  filter(grepl('diabo', Deus.est�.no.c�u.e.no.inferno.est�...., ignore.case=TRUE))%>%
  filter(Faixa.Et�ria == '50 a 65 anos')
View(df_faixa_etaria2)

#Filtro por Sexo para informantes que falaram diabo

#Feminino

df_sexo_feminino <- df_regiao %>%
  select(Sexo,Deus.est�.no.c�u.e.no.inferno.est�....) %>% 
  filter(grepl('diabo', Deus.est�.no.c�u.e.no.inferno.est�...., ignore.case=TRUE)) %>% 
  filter (Sexo == 'Feminino')
View(df_sexo_feminino)
count(df_sexo_feminino_MT, Sexo, Deus.est�.no.c�u.e.no.inferno.est�....)
count(df_sexo_feminino_MT, Sexo)
#Masculino 

df_sexo_masculino <- df_regiao %>%
  select(Sexo,Deus.est�.no.c�u.e.no.inferno.est�....) %>% 
  filter(grepl('diabo', Deus.est�.no.c�u.e.no.inferno.est�...., ignore.case=TRUE)) %>% 
  filter (Sexo == 'Masculino')
View(df_sexo_masculino)
count(df_sexo_feminino_MT, Sexo, Deus.est�.no.c�u.e.no.inferno.est�....)
count(df_sexo_masculino,Sexo)



#C�digo Resumido 


# Chamar base de dados 

df_regiao <- read.csv( "Alib (2).csv", encoding = "UTF-8")
View(df_regiao)


# Criar filtro 
# Faixa et�ria para informantes que falaram diabo (I e II)

df_faixa_etaria <-  df_regiao %>% 
  select(Faixa.Et�ria,Deus.est�.no.c�u.e.no.inferno.est�....) %>% 
  filter(grepl('diabo', Deus.est�.no.c�u.e.no.inferno.est�...., ignore.case=TRUE))


count(df_faixa_etaria, Faixa.Et�ria, Deus.est�.no.c�u.e.no.inferno.est�....)
count(df_faixa_etaria, Faixa.Et�ria)

#Filtro por Sexo para informantes que falaram diabo

df_sexo <-  df_regiao %>%
  select(Sexo,Deus.est�.no.c�u.e.no.inferno.est�....) %>% 
  filter(grepl('diabo', Deus.est�.no.c�u.e.no.inferno.est�...., ignore.case=TRUE))

count(df_sexo, Sexo, Deus.est�.no.c�u.e.no.inferno.est�....)
count(df_sexo, Sexo)
