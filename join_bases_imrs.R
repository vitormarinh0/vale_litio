library(tidyverse)
library(readxl)




# população ---------------------------------------------------------------


pop <- read_excel("0 - POPULAÇÃO REFERÊNCIA/IMRS - 2022 (População Referência)/IMRS2022 - BASE POPULACAO REFERENCIA.xlsx")


#ass_social

# assistencia social ------------------------------------------------------

ass_social <- read_excel("1 - ASSISTÊNCIA SOCIAL/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_ASSISTÊNCIA-SOCIAL_2000-2021.xlsx", 
                                                     col_types = c("numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric", "numeric", 
                                                                   "numeric", "numeric"))

   
                                                                              

# Cultura  --------------------------------------------------------------

cultura <- read_excel("3 - CULTURA/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_CULTURA_2000-2021.xlsx")


# Demografia --------------------------------------------------------------

demografia <- read_excel("4 - DEMOGRAFIA/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS2022 - BASE DEMOGRAFIA 2000-2021.xlsx")


# educação ----------------------------------------------------------------


educ <- read_excel("5 - EDUCAÇÃO/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_EDUCAÇÃO_2000-2021.xlsx", 
                                           col_types = c("numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric", 
                                                         "numeric", "numeric", "numeric"))

# Esporte e lazer ------------------------------------------------------------------


esporte <- read_excel("6 - ESPORTE E LAZER/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS2022 - BASE ESPORTE.xlsx", 
                                    col_types = c("text", "numeric", "numeric", 
                                                  "numeric", "text", "numeric", "numeric", 
                                                  "numeric", "numeric", "numeric", 
                                                  "text", "numeric", "numeric"))



# Finanças ----------------------------------------------------------------

financas <- read_excel("7 - FINANÇAS/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_FINANÇAS_2000-2021.xlsx")


# gestão ------------------------------------------------------------------


gestao <- read_excel("8 - GESTÃO/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_GESTÃO_2000-2021.xlsx", 
                                         col_types = c("numeric", "numeric", "numeric", 
                                                       "numeric", "text", "text", "text", 
                                                       "numeric", "text", "numeric", "numeric", 
                                                       "numeric", "numeric", "text", "text", 
                                                       "text", "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric", 
                                                       "numeric", "numeric", "numeric"))


# meio ambiente -----------------------------------------------------------

meio_ambiente <- read_excel("9 - MEIO AMBIENTE/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_MEIO-AMBIENTE_2000-2021.xlsx", 
                                                col_types = c("numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric"))

# emprego e renda ---------------------------------------------------------


emp_renda <- read_excel("10 - RENDA E EMPREGO/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_RENDA-EMPREGO_2000-2021.xlsx", 
                                                col_types = c("numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric"))


# saneamento e habitação --------------------------------------------------

san_hab <- read_excel("11 - SANEAMENTO E HABITAÇÃO/IMRS - 2022/Base Plataforma 2022 (Nova)/BASE SANEAMENTO E HABITAÇÃO  2000 a 2021 igor.xlsx", 
                                                           col_types = c("numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric", "numeric", 
                                                                         "numeric", "numeric"))

# Saúde -------------------------------------------------------------------

saude <- read_excel("12 - SAÚDE/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS_BASE_SAUDE_2000-2021_2022_novembro.xlsx", 
                                                      col_types = c("numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric", "numeric", 
                                                                    "numeric", "numeric"))


# seg_pub -----------------------------------------------------------------

seg_publica <- read_excel("13 - SEGURANÇA PÚBLICA/IMRS - 2022/Base Plataforma 2022 (Nova)/IMRS2021 - BASE SEGURANÇA_2000-2021.xlsx", 
                                                col_types = c("text", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "text", "text", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric", "numeric", "numeric", 
                                                              "numeric"))

# Juntando bases ----------------------------------------------------------

df1 <- left_join(ass_social, cultura)
df2<- left_join(df1, demografia)
df3<- left_join(df2,emp_renda)
df4<- left_join(df3, esporte)
df5<- left_join(df4, financas)                                                              
df6<- left_join(df5, gestao)  
df7<- left_join(df6, meio_ambiente)  
df8<- left_join(df7, pop)  
df9<- left_join(df8, san_hab)  
df10<- left_join(df9, saude)  
df11<- left_join(df10, seg_publica)  

saveRDS(df11, 'imrs_completo.rds')
