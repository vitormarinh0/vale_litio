


library(maps)
library(diagram)  
library(plotrix)
palette(rainbow(20))
data("world.cities")

pdf(tf <- tempfile(fileext = ".pdf"), width = 40, height = 20)

map('world', fill = TRUE, col = "lightgray", mar = rep(0, 4)) 

nodes <- transform(with(world.cities, world.cities[pop > 5e6,]), country.etc = as.factor(country.etc))
with(nodes, points(long, lat, col=country.etc, pch=19, cex=rescale(pop, c(1, 8)))) 

set.seed(1)
edges <- subset(data.frame(from = sample(nodes$name, 20, replace = TRUE), to = sample(nodes$name, 20, replace = TRUE), stringsAsFactors = F), from != to)
edges <- merge(merge(edges, nodes[, c("name", "long", "lat")], by.x = "from", by.y = "name"), nodes[, c("name", "long", "lat")], by.x = "to", by.y = "name")
edges$col <- as.integer(nodes$country.etc[match(edges$from, nodes$name)])

apply(edges[, -(1:2)], 1, function(x) curvedarrow(to=x[3:4], from=x[1:2], lcol=x[5], curve=.1, arr.pos = 1, lwd=.5))

dev.off()         
shell.exec(tf)











# mapa de luzes -----------------------------------------------------------




regic_vale %>% select(2:14 
                      ) %>% glimpse()




# Renomeando colunas do conjunto de dados 'mun' para facilitar a junção
mun <- mun %>%
  rename(code_ori = code_muni,
         latitude_ori = latitude,
         longitude_ori = longitude)

# Juntando os conjuntos de dados com base nos códigos de origem
regic_vale_com_coords <- regic_vale %>%
  left_join(mun, by = c("cod_ori" = "code_ori")) %>%
  rename(latitude_ori = latitude,
         longitude_ori = longitude)

# Juntando os conjuntos de dados com base nos códigos de destino
regic_vale_com_coords <- regic_vale_com_coords %>%
  left_join(mun, by = c("cod_dest" = "code_dest")) %>%
  rename(latitude_dest = latitude,
         longitude_dest = longitude)

















