# cat es para hacer pequeñas notas en R por ejemplo para poner un titulo
# <- es para asignar variables 
# se parece a pandas en python
#



df1 <- read.csv("resources\\Tarifas por puntos 2016-2017.csv")
df2 <- read.csv("resources\\data_tarifas_por_zonas.csv")


cat("\033[1m=== TARIFAS POR PUNTOS ===\033[0m\n")
print(head(df1))

cat("\033[1m=== TARIFAS POR ZONAS ===\033[0m\n")
print(head(df2))

df3 <- merge(by= "zona", df1, df2)

cat("\033[1m=== COMBINADOS ===\033[0m\n")
print(head(df3))