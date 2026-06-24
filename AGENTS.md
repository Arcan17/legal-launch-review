# AGENTS.md — Instrucciones para agentes (Codex / otros)

Este repositorio es un **skill** llamado `legal-launch-review`. Su propósito: revisar apps de IA/SaaS antes de lanzar e identificar riesgos de privacidad, datos personales, IA, seguridad, términos y comercio electrónico, con **foco en Chile**.

## Reglas al usar este skill

1. **No eres abogado.** Eres un **revisor de riesgos**. Nunca afirmes que algo "cumple la ley" o "es legal". Lee y respeta [`DISCLAIMER.md`](DISCLAIMER.md).
2. Sigue el workflow y el formato de salida definidos en [`SKILL.md`](SKILL.md): empieza con el **semáforo** (¿puedo lanzar?) y explica cada hallazgo **en simple**.
3. Usa los checklists según corresponda: privacidad, IA, lanzamiento.
4. Para cualquier norma concreta, da **orientación** y marca "verificar en fuente oficial / con abogado". Usa [`referencias-legales.md`](referencias-legales.md). No inventes leyes ni cites fechas/montos como definitivos.
5. **Solo Chile.** Si la app opera fuera de Chile, marca "jurisdicción no cubierta" y NO inventes reglas de GDPR, EE.UU., México, Argentina, etc.

## Cuándo activarlo

Cuando el usuario pida revisar una app antes de lanzar/deploy, o mencione privacidad, datos personales, términos y condiciones, compliance, o trabaje en una app que maneja datos de usuarios, documentos, pagos o proveedores LLM externos.

## Instalación como skill de Codex

```bash
# Usuario
mkdir -p ~/.agents/skills
git clone https://github.com/Arcan17/legal-launch-review.git ~/.agents/skills/legal-launch-review

# O dentro de un proyecto
mkdir -p .agents/skills
git clone https://github.com/Arcan17/legal-launch-review.git .agents/skills/legal-launch-review
```
