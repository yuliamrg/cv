# Sistema de Creación de Hojas de Vida Modulares

Repositorio para generar versiones del CV en español e inglés usando Markdown, Pandoc y una plantilla HTML. El objetivo es mantener el contenido organizado por secciones y roles para adaptar cada hoja de vida a una vacante sin duplicar información.

## Cómo funciona

Cada CV se construye a partir de tres archivos:

1. `sections/<lang>/header.md`
2. `roles/<lang>/<role>.md`
3. `sections/<lang>/footer.md`

Los scripts ensamblan esos archivos con `template_cv.html` y generan una salida HTML en `build/`.
Si `build/` o `exports/` no existen, los scripts los crean automáticamente.

## Estructura del proyecto

```text
.
├── roles/
│   ├── es/
│   └── en/
├── sections/
│   ├── es/
│   └── en/
├── images/
├── offers/
├── docs/
│   └── legacy/
├── build/
├── exports/
├── template_cv.html
├── build_cv.sh
├── build_cv.ps1
├── README.md
└── AGENTS.md
```

## Requisitos

- `pandoc`
- Google Chrome o Chromium para revisar el HTML y exportar a PDF

Verificación rápida:

```bash
pandoc --version
```

## Uso

### Linux / macOS

```bash
chmod +x build_cv.sh
./build_cv.sh data_analytics cv_data_analytics es
./build_cv.sh data_analytics cv_data_analytics_en en
```

### Windows PowerShell

```powershell
.\build_cv.ps1 -Role data_analytics -Output cv_data_analytics -Lang es
.\build_cv.ps1 -Role data_analytics -Output cv_data_analytics_en -Lang en
```

## Flujo recomendado

1. Guardar la oferta en `offers/` si se quiere conservar como referencia.
2. Editar el archivo del rol en `roles/es/` o `roles/en/`.
3. Ejecutar el script correspondiente.
4. Revisar el HTML generado en `build/`.
5. Exportar la versión final a PDF y guardarla en `exports/`.

## Convenciones

- Usar `snake_case` para nombres de roles, por ejemplo `coordinador_compras.md`.
- Mantener `header.md` y `footer.md` como contenido compartido por idioma.
- Guardar versiones activas solo en `roles/<lang>/`; los borradores fuera de esa estructura no forman parte del flujo de build.
- No editar manualmente archivos dentro de `build/`.
- Los archivos en `docs/legacy/` son referencias históricas y no forman parte del flujo actual.

## Notas

- No hay pruebas automatizadas; la validación es manual revisando la salida HTML y PDF.
- Si en el futuro se agregan dependencias JavaScript, usar `pnpm` por defecto.
