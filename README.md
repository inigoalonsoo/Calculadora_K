# Calculadora K - GHI Hornos Industriales

Calculadora para determinar el coeficiente de conductividad térmica (k) de hormigones refractarios mediante datos de ensayos de secado de puertas de hornos.

## Cómo usar

### 1. Abrir la calculadora
Simplemente haz doble clic en `calculadora_k_ghi.html` y se abrirá en tu navegador.

### 2. Guardar versiones (importante!)

Cada vez que hagas cambios que quieras guardar, ejecuta:

**Doble clic en `guardar_version.bat`**

Esto te pedira una descripción de los cambios y guardará todo en GitHub.

También puedes usar la línea de comandos:
```bash
git add -A
git commit -m "Tu mensaje aquí"
git push
```

### 3. Historial de versiones

Para ver el historial de cambios:
```bash
git log
```

Para ver los cambios desde la última versión:
```bash
git diff
```

### 4. Recuperar versiones anteriores

Si necesitas volver a una versión anterior:
```bash
git log  (para ver el historial)
git reset --hard CODIGO_DEL_COMMIT
git push --force  (para actualizar GitHub)
```

## Estructura de archivos

- `calculadora_k_ghi.html` - Archivo principal de la calculadora
- `DOCUMENTACION.md` - Documentación técnica
- `guardar_version.bat` - Acceso directo para guardar versiones

## Notas

- Git está configurado para rastrear todos los cambios automáticamente
- Cada vez que ejecutes `guardar_version.bat` se creará una nueva "versión" en el historial
- Puedes ver todas las versiones en: https://github.com/inigoalonsoo/Calculadora_K
