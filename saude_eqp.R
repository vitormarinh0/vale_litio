

###Pacotes

library(basedosdados)
library(tidyverse)
library(RColorBrewer)
set_billing_id("emissao")

df_saude <- readRDS("df_saude.rds") 
df_nome <- readRDS("df_nome.rds")

despesas <- readRDS("despesas.rds")

# Vale do Lítio -----------------------------------------------------------
municipios_vale <- c(
  3103405, 3112307, 3119500, 3133303, 3134004, 3139201, 3141405, 3141801,
  3148707, 3168606, 3169703, 3156502, 3171600, 3157005
)



#====================Coleta de dados

query <- "SELECT ano, sigla_uf, id_municipio, id_estabelecimento_cnes, 
quantidade_leito_cirurgico, quantidade_leito_clinico,
quantidade_consultorio_medico_urgencia
FROM `basedosdados.br_ms_cnes.estabelecimento`
WHERE ano BETWEEN 2010 AND 2022
  AND mes = 12
  AND sigla_uf = 'MG';
"


data <- read_sql(query)

saveRDS(data, "estabelecimentos_saude.rds")

#========================== manipulação 
data <- readRDS("estabelecimentos_saude.rds")
municipios_vale <- c(
  3103405, 3112307, 3119500, 3133303, 3134004, 3139201, 3141405, 3141801,
  3148707, 3168606, 3169703, 3156502, 3171600, 3157005
)

df_nome <- readRDS('df_nome.rds')

# Filtrar 
data <- data %>%
  filter(id_municipio %in% as.character(municipios_vale)) 

# Filtrar, agrupar e resumir os dados
data_filtered <- data %>%
  filter(ano %in% c('2010', '2022')) %>%
  group_by(ano, id_municipio) %>%
  summarise(qtd_cnes = n_distinct(id_estabelecimento_cnes)) %>% 
  left_join(df_nome, by = "id_municipio")


#===================visualização 
   ggplot(data_filtered, aes(x = Municipio, y = qtd_cnes, fill = as.factor(ano))) +
  geom_bar(stat = "identity", position = "dodge", color = "white") +
  geom_text(aes(label = qtd_cnes), position = position_dodge(width = 0.9), vjust = -0.5, size = 3) +
  labs(
    title = "Quantidade de Estabelecimentos de Saúde por Município (2010 e 2022)",
    x = "Município",
    y = "Quantidade de Estabelecimentos",
    fill = "Ano",
    caption = "Fonte: Ministério da Saúde"
  ) +
  scale_fill_discrete(labels = c("2010" = "Ano Inicial", "2022" = "Ano Final")) +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")





# Leitos ------------------------------------------------------------------

q_leitos <- "SELECT ano, sigla_uf, id_municipio, id_estabelecimento_cnes, 
quantidade_leito_cirurgico, quantidade_leito_clinico,
quantidade_leito_complementar, quantidade_leito_pre_parto_centro_obstetrico,
quantidade_leito_recem_nascido_normal_neonatal, quantidade_leito_repouso_pediatrico_ambulatorial
FROM `basedosdados.br_ms_cnes.estabelecimento`
WHERE ano BETWEEN 2010 AND 2022
  AND mes = 12
  AND sigla_uf = 'MG'"


leitos <- read_sql(q_leitos)


# Filtrar 

leitos_summary <-   leitos %>%
  filter(id_municipio %in% as.character(municipios_vale)) %>%
  filter(ano %in% c('2010', '2022')) %>%
  group_by(ano, id_municipio) %>%
  summarize(
    total_leito_cirurgico = sum(quantidade_leito_cirurgico),
    total_leito_clinico = sum(quantidade_leito_clinico),
    outros_leitos = sum(quantidade_leito_complementar, quantidade_leito_pre_parto_centro_obstetrico,
                        quantidade_leito_recem_nascido_normal_neonatal, quantidade_leito_repouso_pediatrico_ambulatorial),
    total = sum(total_leito_cirurgico,total_leito_clinico,outros_leitos)
  ) %>%
  left_join(df_nome, by = "id_municipio")


# Supondo que sua coluna 'ano' seja uma coluna numérica
leitos_summary$ano <- as.Date(as.character(leitos_summary$ano), format = "%Y")

# Agora 'ano' é do tipo Date e contém apenas o ano


















