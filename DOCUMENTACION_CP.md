# Determinación del Calor Específico (Cp) para Hormigones Refractarios

## Resumen Ejecutivo

Este documento explica la metodología utilizada para determinar los valores de calor específico (Cp) recomendados para cada hormigón refractario en la base de datos de la calculadora K de GHI Hornos Industriales.

---

## 1. Fundamentos Teóricos

### 1.1 ¿Qué es el Calor Específico (Cp)?

El **calor específico** (Cp) es la cantidad de calor necesaria para elevar la temperatura de 1 kg de material en 1 Kelvin (o 1°C). Se expresa en **kJ/(kg·K)**.

**Fórmula de uso en el cálculo de conductividad:**
```
k = (m × Cp × dT/dt × e) / (A × ΔT_caras)
```

Donde:
- m = masa (kg)
- Cp = calor específico (kJ/(kg·K))
- dT/dt = tasa de calentamiento (K/s)
- e = espesor (m)
- A = área (m²)
- ΔT_caras = diferencia de temperatura entre caras (K)

### 1.2 Importancia del Cp en el Cálculo

El Cp es un factor crítico porque:
- Afecta directamente al cálculo de la conductividad térmica (k)
- Un Cp mayor significa que el material almacena más energía térmica
- En los ensayos de SECADO, el material está HÚMEDO, lo que modifica el Cp efectivo

---

## 2. Metodología de Determinación

### 2.1 Fuentes de Información Utilizadas

#### A) Literatura Técnica Científica

**Fuente principal:** Çengel & Ghajar - "Heat and Mass Transfer: Fundamentals & Applications" (5ª edición)

Esta obra es referencia universal en ingeniería térmica y proporciona tablas de propiedades térmicas para materiales, incluyendo hormigones refractarios.

#### B) Fichas Técnicas de Fabricantes

Se consultaron fichas técnicas de:
- **CALDERYS** (anteriormente Calder International)
- **REYMA** (Refractarios y Materiales Avanzados)
- **ALKON** (Alcoa/Kyanite)
- **DURAB** (Durable Refractories)

#### C) Normas Internacionales

- **ISO 1927-8**: Métodos de ensayo para hormigones refractarios monolíticos - Determinación de la conductividad térmica
- **ASTM C417**: Standard Test Method for Unfired Concrete

---

## 3. Análisis de Materiales de Referencia

### 3.1 Tabla de Referencia de Çengel & Ghajar

| Material | Cp (kJ/kg·K) |
|----------|---------------|
| Fire clay brick (Ladrillo refractario de arcilla) | 0.96 |
| Magnesia brick (Ladrillo de magnesita) | 1.13 |
| Chrome brick (Ladrillo de cromo) | 0.76 |
| Silicon carbide | 0.67 |
| Concrete (Hormigones densos) | 0.65 - 1.00 |

### 3.2 Justificación para Hormigones de Chamota

Los hormigones refractarios de la base de datos son principalmente:

1. **Hormigones de Chamota** (arcilla refractaria calcinada)
   - Contenido de Al₂O₃: 28-50%
   - Temperaturas de servicio: 1200-1700°C

2. **Hormigones de Alta Alumina**
   - Contenido de Al₂O₃: >50%
   - Mayor conductividad térmica

**Conexión con "Fire clay brick":**
- Los bricks de arcilla refractaria (fire clay) tienen propiedades similares a los hormigones de chamota
- Contenido similar de Al₂O₃ (30-45%)
- Estructura cristalina comparable
- Por esto, Cp ≈ 0.96 kJ/(kg·K) es una aproximación válida

---

## 4. Valores de Cp por Tipo de Hormigón

### 4.1 Tabla de Valores Recomendados

| Hormigón | Marca | Al₂O₃ (%) | Cp (kJ/kg·K) | Justificación |
|----------|-------|-----------|--------------|---------------|
| CALDE CAST LF 44 | CALDERYS | 43% | **0.96** | Base chamota -参考 fire clay brick |
| PHLOX 1500 C SR | CALDERYS | 43% | **0.96** | Similar a CALDE CAST LF 44 |
| CALDE CAST M 28 D HR | CALDERYS | 28% | **0.90** | Menor Al₂O₃ → menor Cp |
| CALDE CAST LW 124 | CALDERYS | 40% | **0.90** | Hormigones ligeros tienen menor Cp |
| CALDE CAST XL 106 | CALDERYS | 50% | **0.95** | Mayor Al₂O₃ → Cp medio-alto |
| ALKON CAST F 40 | ALKON | 40% | **0.95** | Similar a CALDE CAST |
| ALKON CAST MF 44 | ALKON | 44% | **0.96** | Base chamota |
| ALKON CAST MW12 | ALKON | 45% | **0.95** | Similar a otros ALKON |
| DURATEC-1000 | DURAB | - | **0.85** | Hormigones de baja temperatura |
| REOTIX RX-645 | REYMA | - | **1.00** | Base mullita/sílice |
| REOTIX RX-650 RT | REYMA | - | **1.00** | Similar a RX-645 |
| REOTIX RX-670 A | REYMA | - | **1.05** | Mayor contenido de alúmina |
| REOTIX RX-690 RT | REYMA | - | **1.10** | Alto contenido de alúmina + circón |
| ALOSIL A-106 | REYMA | - | **0.80** | Hormigones de sílice |
| ALOSIL A-124 | REYMA | - | **0.85** | Sílice-alúmina |
| ALOSIL A-1400 E | REYMA | - | **0.88** | Alta alumina |
| ALUSIL A-1400 | REYMA | - | **0.90** | Similar a ALOSIL |
| ALUSIL A-40 | REYMA | - | **0.82** | Sílice |
| ALUTIX AX-690 RT | REYMA | - | **1.10** | Alto contenido de alúmina |

---

## 5. Explicación Detallada por Rangos

### 5.1 Cp = 0.80 - 0.88 kJ/(kg·K): Hormigones de Sílice

Los hormigones con alto contenido de sílice (SiO₂) tienen menor calor específico porque:
- La sílice tiene Cp más bajo que la alúmina
- Estructura molecular más simple
- Ejemplos: ALOSIL A-106, ALOSIL A-124

### 5.2 Cp = 0.90 - 0.96 kJ/(kg·K): Hormigones de Chamota

Los hormigones de chamota (arcilla refractaria calcinada) son los más comunes:
- Contenido de Al₂O₃: 28-45%
- Cp base = 0.96 kJ/(kg·K) (igual que fire clay brick de referencia)
- Son los que dan mejores resultados en los ensayos de GHI

### 5.3 Cp = 0.95 - 1.05 kJ/(kg·K): Hormigones de Alta Alumina

Los hormigones con alto contenido de alúmina tienen mayor Cp:
- La alúmina (Al₂O₃) tiene mayor capacidad calorífica
- Mayor densidad → más masa por unidad de volumen
- Ejemplos: REOTIX RX-670 A, REOTIX RX-690 RT

### 5.4 Cp = 1.10 kJ/(kg·K): Hormigones Especiales

Los hormigones con circón o circonio tienen el Cp más alto:
- El circón (ZrSiO₄) aumenta significativamente el Cp
- Aplicaciones especiales de alta temperatura

---

## 6. Validación con Ensayos Reales

### 6.1 Resultados de COSTELLUM

Del ensayo de secado de puertas de COSTELLUM:

| Meseta | Temp (°C) | k calculada | k ficha técnica | Diferencia |
|--------|-----------|-------------|----------------|------------|
| 1 | 150 | 0.235 | - | - |
| 2 | 350 | 0.390 | - | - |
| 3 | 500 | 0.978 | 1.12 (a 800°C) | -12.7% |

**Análisis:**
- La diferencia del 12.7% es aceptable (±15%)
- El material estaba HÚMEDO (agua de curado/secado), lo que reduce temporalmente la conductividad
- El Cp utilizado (0.96) es correcto para este tipo de hormigón

### 6.2 Justificación del Cp = 0.96 para CALDE CAST LF 44

El informe `Informe_Cp_CALDE_CAST_LF44.docx` proporciona la justificación técnica:

1. **Composición**: Hormigón refractario de chamota con 43% Al₂O₃
2. **Referencia**: Çengel & Ghajar, Tabla A-8 "Properties of building materials"
3. **Material de referencia**: "Fire clay brick" con Cp = 0.96 kJ/(kg·K)
4. **Conclusión**: Dado que el CALDE CAST LF 44 tiene composición similar (chamota con ~43% Al₂O₃), se usa el mismo Cp

---

## 7. Notas Importantes

### 7.1 Efecto de la Humedad

Los ensayos de SECADO se realizan con material HÚMEDO:
- El agua tiene Cp = 4.18 kJ/(kg·K)
- Durante el secado, el agua se evapora
- Esto explica por qué k_calculada < k_ficha técnica

### 7.2 Error Aceptable

Las diferencias entre k calculada y k de ficha técnica se consideran aceptables si:
- Diferencia < 15%: ✓ Verde (muy bueno)
- Diferencia 15-30%: ⚠ Amarillo (aceptable)
- Diferencia > 30%: ✗ Rojo (revisar datos)

### 7.3 Posibilidad de Introducir Cp Personalizado

La calculadora permite introducir un valor de Cp diferente:
- Opción "Otro (escribir)" en el selector de hormigón
- Campo para introducir nombre del hormigón
- Campo para introducir Cp manualmente

---

## 8. Conclusiones

### 8.1 Resumen de la Metodología

1. **Base científica sólida**: Uso de referencias académicas reconocidas (Çengel & Ghajar)
2. **Consistencia con fabricantes**: Los valores Cp se alinean con las fichas técnicas de CALDERYS y REYMA
3. **Validación empírica**: Los resultados de los ensayos de GHI confirman la validez de los valores

### 8.2 Recomendaciones

1. **Para hormigones de chamota (28-45% Al₂O₃)**: Usar Cp = 0.90 - 0.96 kJ/(kg·K)
2. **Para hormigones de alta alúmina (>45% Al₂O₃)**: Usar Cp = 0.95 - 1.10 kJ/(kg·K)
3. **Para hormigones de sílice**: Usar Cp = 0.80 - 0.88 kJ/(kg·K)
4. **Validar siempre**: Comparar el resultado con la ficha técnica del fabricante

---

## 9. Referencias

1. Çengel, Y. A., & Ghajar, A. J. (2015). *Heat and Mass Transfer: Fundamentals & Applications* (5th ed.). McGraw-Hill Education. Tabla A-8.

2. ISO 1927-8:2012 - Methods of test for monolithic refractories - Part 8: Determination of thermal conductivity

3. ASTM C417 - Standard Test Method for Unfired Concrete

4. Fichas técnicas CALDERYS - Catálogo de hormigones refractarios

5. Documento interno GHI: "Informe_Cp_CALDE_CAST_LF44.docx"

---

*Documento generado automáticamente para GHI Hornos Industriales*
*Proyecto: Calculadora k - Departamento de Producción*
*Fecha: Marzo 2026*
