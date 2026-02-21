# 📄 Sistema de Creación de Hojas de Vida Modulares (Markdown + Pandoc)

Este proyecto implementa un sistema profesional para crear **hojas de vida (CV)** de forma **modular, reutilizable y automatizada**, utilizando **Markdown, Pandoc y HTML**, sin depender de plataformas de pago.

El objetivo es mantener **un solo repositorio de información**, a partir del cual se pueden generar múltiples versiones de CV según el rol (Analista de Datos, Coordinador de Mantenimiento, etc.), optimizadas para **ATS** y listas para exportar a **PDF**.

---

## 🧠 Concepto General

El CV final se construye uniendo tres partes (por idioma):

1. **Header** → Información de contacto (no cambia)
2. **Rol** → Contenido profesional específico (cambia según el cargo)
3. **Footer** → Información adicional (idiomas, licencias, otros datos)

Todo se escribe en **Markdown**, se ensambla con **Pandoc**, se renderiza con una **plantilla HTML profesional**, y finalmente se exporta a **PDF**.

---

## 📁 Estructura del Proyecto

```
cv/
├── build/
├── exports/
├── images/
├── offers/
├── roles/
│   ├── es/
│   └── en/
├── sections/
│   ├── es/
│   └── en/
├── template_cv.html
├── build_cv.sh
├── build_cv.ps1
└── README.md
```

---

## 🛠️ Requisitos

- Pandoc → https://pandoc.org/installing.html
- Google Chrome / Chromium

---

## 🪟 Uso en Windows

1. Instalar Pandoc (.msi) y marcar **Add to PATH**
2. Abrir PowerShell y verificar:
   ```powershell
   pandoc --version
   ```
3. Ejecutar (ES por defecto):
   ```powershell
   .\build_cv.ps1 -Role data_analytics -Output cv_data_analytics -Lang es
   ```
4. Ejecutar en inglés:
   ```powershell
   .\build_cv.ps1 -Role data_analytics -Output cv_data_analytics_en -Lang en
   ```
5. Abrir HTML y exportar a PDF desde Chrome

---

## 🐧 Uso en Linux

1. Instalar Pandoc:
   ```bash
   sudo apt install pandoc
   ```
2. Dar permisos:
   ```bash
   chmod +x build_cv.sh
   ```
3. Ejecutar (ES por defecto):
   ```bash
   ./build_cv.sh data_analytics cv_data_analytics es
   ```
4. Ejecutar en inglés:
   ```bash
   ./build_cv.sh data_analytics cv_data_analytics_en en
   ```
5. Abrir HTML y exportar a PDF desde Chrome

---

## 🎯 Flujo de Trabajo

1. Copiar oferta a `offers/`
2. Ajustar archivo en `roles/es/` o `roles/en/`
3. Ejecutar script
4. Exportar PDF
5. Enviar CV

---

## ✅ Buenas Prácticas

- Mantener CV en 1–2 páginas
- Ajustar palabras clave por oferta
- No usar texto oculto
- Versionar con Git (opcional)

---

## 📌 Autor

**Yuliam Darío Rivera González**  
Uso personal / profesional
