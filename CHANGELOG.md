# Changelog

Todas las versiones notables de este skill se documentan aquí.

## [0.2.0] — 2026-06-24

### Añadido
- Sección obligatoria **"✅ Lo que ya está bien"** en el reporte (balance, no solo riesgos).
- **Calibración de severidad** con ejemplos de casos borde, para consistencia entre revisiones.
- Paso de **re-revisión**: verificar correcciones contra el código, no contra el commit; marcar ✅/⚠️/❌.
- **Ofrecer guardar el reporte** en un archivo (ej. `revision-legal.md`) para comparar antes/después.
- Ejemplo `rag-app-report-example.md` actualizado con la sección de balance.

## [0.1.0] — 2026-06-23

Primera versión pública. Foco: Chile · apps IA / SaaS / RAG.

### Incluye
- `SKILL.md` — revisor de riesgos con reporte tipo semáforo y lenguaje simple.
- Checklists: privacidad/datos personales (Chile), riesgos de IA, preparación de lanzamiento.
- `referencias-legales.md` — leyes relevantes con links a fuentes oficiales (orientativo, a verificar).
- `DISCLAIMER.md`, `LICENSE` (MIT) y avisos "no es asesoría legal" en todos los checklists.
- `examples/` — reportes de ejemplo para guiar el formato de salida.
- `AGENTS.md` — compatibilidad con Codex.
- `scripts/validate-skill.sh` — validación básica de estructura.
