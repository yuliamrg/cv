# Checklist de Revisión de CV

Reglas para validar contenido de plantillas antes de generar versiones finales.

---

## 1. Perfil Profesional

- [ ] Longitud: 40-60 palabras máximo
- [ ] Incluir al menos 1 resultado cuantificable
- [ ] Estado claro de transición de carrera (si aplica)
- [ ] Mentionar herramientas/tecnologías clave
- [ ] Indicar tipo de rol buscado y modalidad

---

## 2. Experiencia Profesional

- [ ] Cada bullet sigue formato: acción + resultado medible
- [ ] Incluir números/porcentajes cuando sea posible
- [ ] Evitar bullets genéricas ("responsabilidades varias")
- [ ] Resaltar logros, no solo tareas
- [ ] Experiencia anterior relevante condensada si es muy extensa

---

## 3. Habilidades Técnicas

- [ ] Sin duplicados (ej: no repetir Excel en dos secciones)
- [ ] Agrupadas por categoría (ej: Análisis, Lenguajes, Herramientas)
- [ ] Nivel de proficiency indicado cuando aplica (básico, intermedio, avanzado)
- [ ] Solo habilidades realmente usadas en proyectos/empleo

---

## 4. ATS Compatibility

- [ ] NO crear sección de palabras clave o keywords ATS
- [ ] Keywords implícitas e integradas naturalmente en perfil, experiencia y habilidades
- [ ] Links como texto (no imágenes)
- [ ] Formato simple (evitar tablas complejas o elementos que ATS no lea)

---

## 5. Consistencia con Plantilla

- [ ] Header usa estructura de `sections/<lang>/header.md`
- [ ] Footer usa estructura de `sections/<lang>/footer.md`
- [ ] Separadores: usar `---` para divisores de sección
- [ ] Encabezados: `##` para secciones, `###` para subsecciones

---

## 6. Formato y Estilo

- [ ] Español: tildes correctas, puntuación profesional
- [ ] Mayúsculas solo en encabezados y nombres propios
- [ ] Información de contacto completa y actualizada
- [ ] Foto de perfil referenciada en `images/`

---

## Ejemplo de Perfil que Cumple

> **Incorrecto:** "Profesional con experiencia en análisis de datos. Keywords: Excel, Python, SQL, KPIs."

> **Correcto:** "Analista de datos con experiencia en Python y SQL. Desarrollé dashboards en Looker Studio que redujeron tiempo de reporte en 50%. Busco rol de Jr. en empresa de retail."

---

## Uso

```bash
# Revisión manual
# 1. Abrir archivo roles/<lang>/<rol>.md
# 2. Verificar cada regla del checklist
# 3. Corregir antes de ejecutar ./build_cv.sh
```

Reglas actualizadas: Marzo 2026
