# Vectores
# Crear un vector
cat("\033[1m=== VECTOR ===\033[0m\n")
mi_vector <- c(1, 2, 3, 4, 5)
print(mi_vector)

# Acceder a elementos del vector
print(mi_vector[3])

# Operaciones con vectores
resultado <- mi_vector * 2
print(resultado)

# Arrays
# Crear un array
cat("\033[1m=== ARRAYS ===\033[0m\n")
mi_array <- array(1:12, dim = c(2, 3, 2))
print(mi_array)

# Acceder a elementos del array
print(mi_array[1, 2, 1])

# Operaciones con arrays
resultado_array <- mi_array * 2
print(resultado_array)


# Matrices
# Crear una matriz
cat("\033[1m=== MATRICES ===\033[0m\n")
mi_matriz <- matrix(1:9, nrow = 3, ncol = 3)
print(mi_matriz)

# Acceder a elementos de la matriz
print(mi_matriz[2, 3])

# Operaciones con matrices
resultado_matriz <- mi_matriz * 2
print(resultado_matriz)



# Data Frames
# Crear un data frame
cat("\033[1m=== DATA FRAMES ===\033[0m\n")
mi_data_frame <- data.frame(
Nombre = c("Juan", "María", "Pedro"),
  Edad = c(25, 30, 28),
  Puntuación = c(80, 75, 90)
)
print(mi_data_frame)

# Acceder a elementos del data frame
print(mi_data_frame$Nombre)
print(mi_data_frame[2, "Edad"])

# Operaciones con data frames
mi_data_frame$Edad <- mi_data_frame$Edad + 1
print(mi_data_frame)
