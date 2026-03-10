# PROYECTO SECADO PUERTAS - GHI HORNOS INDUSTRIALES

## RESUMEN EJECUTIVO

Este proyecto tiene como objetivo calcular el coeficiente de conductividad térmica (k) de hormigones refractarios mediante datos de ensayos de secado de puertas de hornos.

---

## 1. REQUISITOS DEL JEFE (Raúl Villasante)

1. Calcular coeficiente de transmisividad térmica (k) en cada meseta
2. Comparar con ficha técnica del hormigón
3. Revisar el calor específico (Cp)
4. **HERRAMIENTA HTML** que:
   - Adjunte Excel de datos de Ballén
   - Soporte hasta 7 termopares
   - Permita distintos tipos de hormigones
   - Sea estandarizada

---

## 2. DISEÑO DE LA HERRAMIENTA HTML

### Colores: GHI SMART FURNACES (azul/naranja)

### Flujo:
1. **Proyecto:** Nombre del proyecto
2. **Excel:** Adjuntar archivo Excel
3. **Datos pieza:** Masa, Espesor, Base, Altura → Área
4. **Hormigón:** Seleccionar de base datos → Cp recomendado
5. **Calcular:** Procesa y muestra resultados
6. **Output:** Tablas, gráficos, comparaciones

### 1.1 COSTELLUM
| Parámetro | Valor |
|-----------|-------|
| Hormigon | CALDE CAST LF 44 (Marca 5 - capa exterior) |
| Espesor | 0.125 m (125 mm) |
| Área | 21.61 m² |
| Masa | 5758.62 kg |
| Cp | 0.96 kJ/(kg·K) |
| Termopares | Q1, Q2 (cara caliente) + AISLANTE (tradós) |

**Resultados k calculada:**
- Meseta 150°C: k = 0.235 W/(m·K)
- Meseta 350°C: k = 0.390 W/(m·K)
- Meseta 500°C: k = 0.978 W/(m·K)

### 1.2 ARZYZ
| Parámetro | Valor |
|-----------|-------|
| Hormigon | CALDE CAST LF 44 (Marca 3) |
| Espesor | 0.125 m (125 mm) |
| Masa | 2311 kg |
| Cp | 0.96 kJ/(kg·K) |
| Termopares | Q1 (cara caliente) + AISLANTE (tradós) |

**K calculada:** Pendiente de calcular

---

## 2. FICHA TÉCNICA - CALDE CAST LF 44

| Temperatura | Conductividad térmica (k) |
|-------------|--------------------------|
| 400°C | 1.14 W/(m·K) |
| 600°C | 1.30 W/(m·K) |
| 800°C | 1.46 W/(m·K) |

---

## 3. ANÁLISIS DEL MÉTODO

### 3.1 Fórmula de cálculo

```
Q = k × A × ΔT_caras / Δx

k = Q × Δx / (A × ΔT_caras)
```

O equivalentemente:
```
k = (m × Cp × dT/dt × Δx) / (A × ΔT_caras)
```

Donde:
- Q = Flujo de calor (W)
- k = Conductividad térmica (W/(m·K))
- A = Área (m²)
- ΔT_caras = Diferencia de temperatura entre caras (°C o K)
- Δx = Espesor (m)
- m = Masa (kg)
- Cp = Calor específico (kJ/(kg·K))
- dT/dt = Tasa de calentamiento (K/s)

### 3.2 Justificación del Cp

El valor Cp = 0.96 kJ/(kg·K) proviene de:
- **Fuente:** Çengel & Ghajar - "Heat and Mass Transfer" (Tabla A-8)
- **Material de referencia:** "Fire clay brick"
- **Justificación:** El CALDE CAST LF 44 es un hormigón refractario de base chamota con 43% Al₂O₃

### 3.3 Observaciones importantes

1. **Efecto del agua:** Los ensayos son de SECADO, el material está HÚMEDO
   - Las observaciones del Excel muestran "sale agua", "AGUA"
   - Esto explica por qué k_calculada < k_ficha técnica

2. **Precisión:**
   - Mejor precisión en mesetas a mayor temperatura
   - La meseta 500°C tiene ~15% de diferencia vs ficha técnica

---

## 4. ARCHIVOS FUENTE

### Excel:
- `CURVA SECADO PUERTA COSTELLUM.xls` - Datos originales
- `CURVA SECADO PUERTA COSTELLUM - solución.xls` - Con k calculada
- `CURVA SECADO PUERTA ARZYZ.xls` - Datos ARZYZ (sin calcular)

### Planos:
- `S06-01-08-PGG-0220-008.pdf` - Plano ARZYZ
- `10653-H01-PGG-0220-008.pdf` - Plano COSTELLUM

### Otros:
- `CONDUCTIVIDADES TERMICAS REYMA.xlsx` - Tabla de conductividades
- `CALDE CAST LF 44 - FICHA TÉCNICA.webp` - Ficha técnica
- `Informe_Cp_CALDE_CAST_LF44.docx` - Justificación del Cp

---

## 5. HERRAMIENTA HTML

Se ha creado una herramienta HTML para automatizar los cálculos.

### Inputs requeridos:
1. Temperatura cara caliente (°C)
2. Temperatura tradós/aislante (°C)
3. Espesor (m)
4. Área (m²)
5. Masa (kg)
6. Cp (kJ/kg·K)
7. dT/dt (K/hora) - tasa de calentamiento

### Outputs:
1. k calculada (W/(m·K))
2. Flujo de calor Q (W)
3. Comparación con valores de ficha técnica

---

## 6. PRÓXIMOS PASOS

1. Calcular k para ARZYZ
2. Comparar con ficha técnica
3. Mejorar la herramienta HTML con base de datos de Cp

---

*Documento generado: 2026-03-03*
*Proyecto: GHI Hornos Industriales - Departamento de Producción*
