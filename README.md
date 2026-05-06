[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/hWSgSSfy)
#  Granjavilla

## Introducción

Héctor es un granjero que se gana la vida cultivando plantas de distintas especies. Para ello tiene que **sembrar, regar y cosechar** sus cultivos. Después de la cosecha, **vende lo que cultivó**, obteniendo ganancias en forma de **monedas de oro**. Héctor es muy ahorrativo: todo el oro que obtiene lo acumula.

Nuestro objetivo es construir un juego en el que podamos **controlar a Héctor usando el teclado**, moviéndolo por el tablero.

Las especies disponibles en el juego son:

- 🌽 **Maíz** (`corn`)
- 🌾 **Trigo** (`wheat`)
- 🍅 **Tomaco**

📁 **Las imágenes necesarias están en la carpeta `assets/`**  
> *TIP: Recordá que “corn” es maíz y “wheat” es trigo en inglés.*

---

## 🌱 Sembrar

Además de moverse, Héctor puede sembrar diferentes tipos de plantas:

| Tecla | Planta | Estado inicial | Imagen |
|---|---|---|---|
| `M` | Maíz   | Bebé            | `corn_baby.png` |
| `T` | Trigo  | Etapa 0         | `wheat_0.png`   |
| `O` | Tomaco | Planta adulta   | `tomaco.png`    |

⚠️ **Nota:** Al principio, evitar que haya más de una planta en una misma posición.  
> Si hay varias plantas en un lugar, solo se muestra una imagen, pero **todas se ven afectadas** por el riego o cosecha.

---

## 💧 Regar

Cuando presionamos la tecla `R`, Héctor **riega la planta en su posición actual**.

Si **no hay una planta en esa posición**, lanzar una excepción:  
> `"no tengo nada para regar"`

### Efectos del riego por especie:

| Planta  | Efecto al regar | Imagen resultante |
|---------|------------------|-------------------|
| **Maíz**   | Si es bebé → pasa a adulta | `corn_adult.png` |
| **Trigo**  | Evoluciona: 0 → 1 → 2 → 3 → 0 (cíclico) | `wheat_x.png` |
| **Tomaco** | Se mueve una celda hacia arriba <br> (si puede) | — |

---

## 💦 Aspersor

![aspersor](https://i.pinimg.com/originals/20/f5/ab/20f5ab811789f5ed4ca147f199bbad51.jpg)

El juego comienza con un **aspersor** en el **centro del tablero**, que **riega automáticamente** las plantas **alrededor suyo cada 5 segundos**.

📌 Para implementarlo:

- Usar `game.onTick(milliseconds, name, action)`
- Usar `game.getObjectsIn(position)` para obtener los objetos cercanos

---

## 🌾 Cosechar

Presionando la tecla `C`, Héctor intenta **cosechar la planta en su misma posición**.

Si no hay ninguna planta:
> `"no tengo nada para cosechar"`

### ¿Qué se puede cosechar?

| Planta  | Condición para cosechar |
|---------|--------------------------|
| **Maíz**   | Si es adulta            |
| **Trigo**  | Si está en etapa 2 o 3  |
| **Tomaco** | Siempre                 |

Al cosechar, la planta **desaparece del juego** y Héctor **la guarda para vender**.

---

## 💰 Venta

Presionando la tecla `V`, Héctor **vende todas las plantas que tiene para vender**.

| Planta  | Condición | Ganancia por unidad |
|---------|-----------|----------------------|
| Maíz    | Adulta    | 150 monedas          |
| Trigo   | Etapa 2   | 100 monedas          |
| Trigo   | Etapa 3   | 200 monedas          |
| Tomaco  | Siempre   | 80 monedas           |

📌 Fórmula para trigo: `(etapa - 1) * 100`

Al presionar la **barra espaciadora**, Héctor debe decir:

> `"tengo X monedas, y Y plantas para vender"`

 Después de vender, **pierde las plantas** y **suma el oro ganado**.

---

## Bonus 1: Varios Mercados

Agregar **dos o tres mercados** (`market.png`) en diferentes ubicaciones.

Cada mercado tiene:

- Una **cantidad limitada de monedas**
- Un inventario de **mercadería disponible**

📌 Héctor solo puede vender si:

1. Está parado en un mercado
2. El mercado tiene **suficiente oro** para pagar

✅ Si se concreta la venta:

- El mercado recibe la **mercadería**
- A Héctor se le da el **oro correspondiente**
- Al mercado se le **descuenta ese oro**

---

##  Bonus 2: Varios aspersores

Héctor puede **comprar aspersores** en los mercados. Existen tres tipos:

| Tipo           | Frecuencia | Precio (sugerido) |
|----------------|------------|-------------------|
| Básico         | Cada 5 s   | 300 monedas        |
| Intermedio     | Cada 2 s   | 600 monedas        |
| Avanzado       | Cada 1 s   | 1000 monedas       |

Estos aspersores riegan **automáticamente** cada X segundos, según su tipo.

---

## ✍️ Creado por Nahuel Palumbo
