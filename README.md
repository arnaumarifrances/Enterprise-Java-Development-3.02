## Especificaciones

### 1. Base de datos del Blog

Normaliza la siguiente base de datos de blogs y escribe los scripts **DDL** necesarios para crear las tablas correspondientes:

| Autor            | Título                          | Recuento de palabras | Vistas |
|------------------|----------------------------------|------------------------|--------|
| Maria Charlotte  | Best Paint Colors               | 814                    | 14     |
| Juan Perez       | Small Space Decorating Tips     | 1146                   | 221    |
| Maria Charlotte  | Hot Accessories                 | 986                    | 105    |
| Maria Charlotte  | Mixing Textures                 | 765                    | 22     |
| Juan Perez       | Kitchen Refresh                 | 1242                   | 307    |
| Maria Charlotte  | Homemade Art Hacks              | 1002                   | 193    |
| Gemma Alcocer    | Refinishing Wood Floors         | 1571                   | 7542   |

---

### 2. Base de datos de Aerolínea

Normaliza la siguiente base de datos de aerolínea y escribe los scripts **DDL** necesarios para crear las tablas correspondientes:

| Nombre del Cliente | Estado del Cliente | Número de Vuelo | Aeronave     | Asientos Totales | Distancia del Vuelo | Millaje Total del Cliente |
|--------------------|--------------------|------------------|---------------|-------------------|----------------------|----------------------------|
| Agustine Riviera   | Silver             | DL143            | Boeing 747    | 400               | 135                  | 115235                     |
| Agustine Riviera   | Silver             | DL122            | Airbus A330   | 236               | 4370                 | 115235                     |
| Alaina Sepulvida   | None               | DL122            | Airbus A330   | 236               | 4370                 | 6008                       |
| ...                | ...                | ...              | ...           | ...               | ...                  | ...                        |

*(Consultar el enunciado completo en Ironhack para ver todos los registros)*

---

### 3. Consultas SQL de la Aerolínea

Implementa las siguientes consultas **SQL** utilizando la base de datos de aerolínea:

1. Obtener el **número total de vuelos** en la base de datos.
2. Obtener la **distancia promedio de vuelo**.
3. Obtener el **promedio de asientos** por aeronave.
4. Obtener el **promedio de millas voladas por los clientes**, agrupado por estado del cliente.
5. Obtener el **máximo de millas voladas por los clientes**, agrupado por estado del cliente.
6. Obtener el **número total de aeronaves** cuyo nombre contenga la palabra `"Boeing"`.
7. Encontrar todos los **vuelos con distancia entre 300 y 2000 millas**.
8. Encontrar la **distancia promedio de vuelo reservada**, agrupada por estado del cliente (**requiere JOIN**).
9. Encontrar la **aeronave más reservada por clientes con estado "Gold"** (**requiere JOIN**).

---

📝 **Recuerda**: Organiza tu código de forma clara, utiliza buenas prácticas en el nombramiento de tablas y columnas, y documenta tu solución cuando sea necesario.
