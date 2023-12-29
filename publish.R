library(rsconnect)
rsconnect::setAccountInfo(name='fjp-direi', token='75D8454C520198B1F7E42337EF04E7D9', secret='U64BAZ1StWy7cOQgQt90fa00Gu3q2xE3vtf1CubS')
rsconnect::deployApp(appDir="C:/Users/caios/Documents/GitHub/vale_litio/_book/", 
                     server="posit.cloud")



rsconnect::setAccountInfo(name='fjp-direi', token='75D8454C520198B1F7E42337EF04E7D9', secret='U64BAZ1StWy7cOQgQt90fa00Gu3q2xE3vtf1CubS')
rsconnect::deployApp(appDir="C:/Users/caios/OneDrive/Área de Trabalho/dev_version/_book/", server="shinyapps.io")


rsconnect::setAccountInfo(name='fjp-direi', token='75D8454C520198B1F7E42337EF04E7D9', secret='U64BAZ1StWy7cOQgQt90fa00Gu3q2xE3vtf1CubS')
rsconnect::deployApp(appDir="C:/Users/caios/Documents/GitHub/vale_litio/_book/", server="shinyapps.io") 


# dia 29 de dezembro de 2023
rsconnect::setAccountInfo(name = 'fjp-direi',
                          token = '75D8454C520198B1F7E42337EF04E7D9',
                          secret = 'U64BAZ1StWy7cOQgQt90fa00Gu3q2xE3vtf1CubS',
                          server = 'posit.cloud')

rsconnect::deployApp(appDir="C:/Users/caios/Documents/GitHub/vale_litio/_book/", 
                     server="posit.cloud",
                     appName = "vale_do_litio")

rsconnect::setAccountInfo(name='fjp-direi', 
                          token='75D8454C520198B1F7E42337EF04E7D9', 
                          secret='U64BAZ1StWy7cOQgQt90fa00Gu3q2xE3vtf1CubS')
rsconnect::deployApp(appDir="C:/Users/caios/Documents/GitHub/vale_litio/_book/", 
                     server="shinyapps.io",
                     appName = "vale_do_litio")
