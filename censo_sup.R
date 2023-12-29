
library(dplyr)
library(ggplot2)
library(RColorBrewer)

censo_sup <- readRDS("censo_sup.rds")
df_nome <- readRDS("df_nome.rds")


# Filtrar apenas municípios do Vale do Lítio
municipios_vale <- c(3103405, 3112307, 3119500, 3133303, 3134004, 3139201, 3141405, 3141801,
                     3148707, 3168606, 3169703, 3156502, 3171600, 3157005)


# Distribuição de Tipos de Grau Acadêmico
tipos_vale_2021 <- df %>% 
  filter(ano == 2021) %>% 
  select(id_municipio, ano, tipo_grau_academico) %>%
  left_join(df_nome)

# Defina a ordem dos níveis do tipo_grau_academico
ordem_niveis <- c(
  "1" = "Bacharelado",
  "2" = "Licenciatura",
  "3" = "Tecnológico",
  "4" = "Bacharelado e Licenciatura",
  "." = "Não aplicável"
)

# Mapeie o fator tipo_grau_academico para a ordem desejada
tipos_vale_2021$tipo_grau_academico <- factor(
  tipos_vale_2021$tipo_grau_academico,
  levels = names(ordem_niveis),
  labels = ordem_niveis
)

# Gráfico de barras com valores nas barras e duas casas decimais
ggplot(tipos_vale_2021, aes(x = Municipio, fill = tipo_grau_academico)) +
  geom_bar(position = "fill") +
  geom_text(
    aes(
      label = scales::percent(..count.. / tapply(..count.., ..x.., sum)[..x..], accuracy = 0.01)
    ),
    stat = "count",
    position = position_fill(vjust = 0.5),
    size = 3,
    color = "white"
  ) +
  labs(
    title = "Distribuição de Tipos de Grau Acadêmico por Município",
    x = "Município",
    y = "Proporção",
    fill = "Tipo de Grau Acadêmico"
  ) +
  theme_minimal() +
  scale_fill_manual(
    values = brewer.pal(5, "Set2"),  # Escolha a paleta de cores desejada
    name = "Grau Acadêmico",
    labels = ordem_niveis
  ) +
  scale_x_discrete(labels = function(x) stringr::str_wrap(x, width = 10)) +
  scale_y_continuous(labels = scales::percent_format(scale = 1)) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))





# Quantidade de vagas -----------------------------------------------------

query <- "SELECT ano, sigla_uf, id_municipio,nome_curso_cine, tipo_grau_academico, tipo_modalidade_ensino, tipo_nivel_academico, quantidade_vagas, quantidade_vagas_ead,indicador_gratuito
FROM `basedosdados.br_inep_censo_educacao_superior.curso`
WHERE ano BETWEEN 2010 AND 2021
  AND sigla_uf = 'MG'"

df <- read_sql(query)

#=========manipulacao
municipios_vale <- c(
  3103405, 3112307, 3119500, 3133303, 3134004, 3139201, 3141405, 3141801,
  3148707, 3168606, 3169703, 3156502, 3171600, 3157005
)

df_nome <- readRDS('df_nome.rds')

# Filtrar e converter ano para formato de data
df <- df %>%
  filter(id_municipio %in% as.character(municipios_vale))  %>% 
  left_join(df_nome, by = "id_municipio")

# Filtrar, agrupar e resumir os dados
df_filtered <- df %>%
  group_by(ano, id_municipio) %>%
  summarise(qtd_cursos = n_distinct(nome_curso_cine),
            Municipio = Municipio)%>%
  filter(ano %in% c('2010', '2021')) 


#============ viz

# Criar o gráfico de barras
ggplot(df_filtered, aes(x = Municipio, y = qtd_cursos, fill = as.factor(ano))) +
  geom_bar(stat = "identity", position = "dodge", color = "white") +
  geom_text(aes(label = qtd_cursos), position = position_dodge(width = 0.9), vjust = -0.5, size = 3) +
  labs(
    title = "Quantidade de Cursos por Município (2010-2021)",
    x = "Município",
    y = "Quantidade de Cursos",
    fill = "Ano",
    caption = "Fonte: INEP"
  ) +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")









