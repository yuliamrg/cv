# Repository Guidelines

## Estructura del proyecto y organización de módulos
Este repositorio genera hojas de vida modulares con Markdown, Pandoc y una plantilla HTML. La estructura principal es:

- `roles/es/` y `roles/en/`: contenido específico por cargo, por ejemplo `data_analytics.md`.
- `sections/es/` y `sections/en/`: bloques compartidos (`header.md` y `footer.md`) por idioma.
- `docs/legacy/`: versiones base antiguas usadas como referencia histórica.
- `template_cv.html`: plantilla base usada por Pandoc.
- `build/`: salida HTML generada localmente.
- `exports/`: entregables finales exportados a PDF u otros formatos.
- `images/`: recursos gráficos usados en la plantilla.
- `offers/`: insumos de vacantes para adaptar el CV.

## Comandos de construcción, prueba y desarrollo
No hay aplicación de desarrollo ni dependencias Node activas en este proyecto. El flujo principal es generar HTML con Pandoc:

- `./build_cv.sh data_analytics cv_data_analytics es`: construye un CV en Linux/macOS.
- `./build_cv.sh data_analytics cv_data_analytics_en en`: genera la versión en inglés.
- `.\build_cv.ps1 -Role data_analytics -Output cv_data_analytics -Lang es`: construye en Windows PowerShell.
- `pandoc --version`: valida que Pandoc esté instalado antes de ejecutar los scripts.

Si en el futuro se agregan dependencias JavaScript, usar `pnpm` por defecto.

## Estilo de código y convenciones de nombres
Mantén el contenido en Markdown simple y legible. Usa encabezados claros, listas cortas y texto orientado a ATS. Para scripts existentes, conserva indentación de 2 espacios en PowerShell y bloques de shell compactos en Bash. Nombra archivos de rol en `snake_case`, por ejemplo `coordinador_compras.md`, y respeta la convención `roles/<idioma>/<rol>.md`.

## Guía de pruebas
No existe una suite de pruebas automatizadas. La validación es manual:

- ejecutar el script de construcción sin errores;
- revisar el HTML generado en `build/`;
- abrir el resultado en Chrome o Chromium y confirmar diseño, saltos de página y texto;
- exportar a PDF solo después de esa revisión.

## Commits y pull requests
El historial muestra mensajes breves y descriptivos, en español o inglés, como `Add bilingual CV structure and update build scripts`. Mantén commits pequeños, en modo imperativo y enfocados en un solo cambio. En cada pull request incluye:

- objetivo del ajuste;
- archivos o roles afectados;
- evidencia visual si cambia la plantilla o el diseño exportado;
- pasos usados para validar la salida generada.

## Consejos de configuración y salidas
No edites archivos dentro de `build/` manualmente; regénéralos desde los scripts. Conserva `exports/` para entregables finales y usa `docs/legacy/` solo como referencia, no como fuente activa del CV.
