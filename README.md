# legal-launch-review

> Skill para [Claude Code](https://claude.com/claude-code) que revisa apps de **IA / SaaS** antes de lanzar y te dice, en lenguaje simple, **qué te bloquea el lanzamiento** desde el punto de vista de privacidad, datos personales, seguridad básica y términos. **Foco: Chile.**

---

## ⚠️ Esto NO es asesoría legal

Este skill es un **revisor de riesgos**, no un abogado. Te ayuda a **detectar omisiones y riesgos** y a saber **dónde buscar**, pero:

- **No afirma que algo "cumple la ley".**
- Las referencias legales son **orientativas** — debes **verificarlas tú en la fuente oficial** (BCN, SERNAC, ANCI, etc.) y, ante cualquier duda real, **consultar a un abogado**.
- Las leyes cambian. Revisa siempre la fecha de "última verificación" en [`referencias-legales.md`](referencias-legales.md).

**Lo usas bajo tu propia responsabilidad.**

---

## Qué hace

Cuando se lo pides sobre un proyecto, revisa el código real y entrega un reporte que empieza con un **semáforo** (🔴 / 🟡 / 🟢 ¿puedo lanzar?) y luego lista cada riesgo **explicado en simple**, con:

- qué tan grave es,
- por qué importa,
- cómo arreglarlo,
- si bloquea el lanzamiento,
- si es tema de abogado,
- y dónde está en el código.

Cubre: datos personales, aviso de privacidad, términos y condiciones, riesgos de IA (RAG / LLM externo), seguridad mínima, comercio electrónico (si cobras) y licencias.

## Alcance

- **País:** Chile (Ley 21.719 de datos personales, Ley 19.496 / SERNAC, Ley 21.663 de ciberseguridad, proyecto de ley de IA, entre otras).
- **Tipo de app:** IA / SaaS / RAG / APIs / productos web.
- **Versión:** v1 — orientativa, no exhaustiva. No cubre otras jurisdicciones.

## Instalación

Copia la carpeta en tu directorio de skills de Claude Code:

```bash
git clone https://github.com/Arcan17/legal-launch-review.git \
  ~/.claude/skills/legal-launch-review
```

Queda disponible en todas tus sesiones, en cualquier proyecto.

## Uso

Desde la carpeta de tu proyecto, en Claude Code:

```
/legal-launch-review
```

O en lenguaje natural:

```
Usa el skill legal-launch-review para revisar esta app antes de lanzar.
Revisa privacidad, datos personales, riesgos de IA, seguridad, T&C y licencias.
Foco Chile. Dame el semáforo arriba y cada hallazgo "en simple".
```

## Estructura

```
legal-launch-review/
├── SKILL.md                       # Instrucciones, workflow y formato del reporte
├── chile-privacy-checklist.md     # Datos personales y privacidad (Chile)
├── ai-app-checklist.md            # Riesgos de IA / RAG / LLM externo
├── launch-readiness-checklist.md  # Seguridad, T&C, e-commerce, licencias
└── referencias-legales.md         # Leyes relevantes + links oficiales (a verificar)
```

## Contribuir

Las referencias legales se desactualizan. Si una ley cambió o un link murió, abre un *issue* o *PR* con la **fuente oficial**. No se aceptan afirmaciones legales sin enlace a la fuente.

## Licencia

[MIT](LICENSE) © Bastian Altamirano
