# Checklist — Riesgos de IA (RAG / LLM / SaaS con IA)

> ⚠️ **NO es asesoría legal.** Orientación de riesgos. Verifica toda norma en la fuente oficial y consulta a un abogado. Ver [DISCLAIMER.md](DISCLAIMER.md).

> Aplica a apps que usan modelos de lenguaje, RAG sobre documentos del usuario, o toman decisiones automatizadas.

## 1. Transparencia del uso de IA
- [ ] ¿Se avisa al usuario que las respuestas son generadas por IA y **pueden contener errores**?
- [ ] ¿Se evita presentar la app como **asesoría legal / médica / financiera / profesional** salvo que realmente lo sea (con respaldo)?
- [ ] ¿Queda claro que la app responde **según los documentos cargados**, no como verdad absoluta?

## 2. Datos hacia el modelo
- [ ] ¿Se usa un **modelo externo** (OpenAI/Anthropic) o **local**? El usuario debe poder saberlo.
- [ ] Si es externo → ¿se avisa que el contenido sale hacia ese proveedor? (transferencia internacional → ver privacy checklist)
- [ ] ¿Se **anonimiza/redacta PII** (RUT, email, teléfono) antes de mandar al modelo, si eso es lo que la app promete?
- [ ] Verifica que la promesa de la landing ("privacidad", "anonimizado") **coincida con el código real**. Promesa no cumplida = riesgo Alto (publicidad engañosa, además de privacidad).

## 3. Retención de derivados
- [ ] ¿Cuánto tiempo se guardan **embeddings, chunks, prompts y respuestas**?
- [ ] ¿Se borran al eliminar el documento/cuenta? (los derivados también cuentan como datos)
- [ ] ¿Los documentos se **procesan temporalmente** o se almacenan? El usuario debe saberlo.

## 4. Entrenamiento y reutilización
- [ ] ¿Se **entrena** o ajusta algún modelo con datos del usuario? Si sí → requiere consentimiento explícito (marcar "verificar con abogado").
- [ ] ¿El proveedor externo entrena con los datos enviados? (revisar términos del provider y configurar opt-out si existe)

## 5. Decisiones automatizadas y contenido
- [ ] ¿La app toma **decisiones automatizadas** con efecto sobre la persona (scoring, recomendación que afecta derechos)? → mayor escrutinio, marcar "verificar".
- [ ] ¿Hay control de **contenido sensible / dañino** generado?
- [ ] ¿Hay límite a alucinaciones en dominios críticos (disclaimer + no afirmar certezas)?

## 6. Responsabilidad del usuario
- [ ] ¿Se establece que el usuario sube documentos **bajo su responsabilidad** y con permiso para hacerlo?
- [ ] ¿Se prohíbe subir datos de terceros sin autorización o contenido ilegal?

## Banderas rojas (Severidad Alta típica)
- La landing promete anonimización/privacidad que el código **no** implementa.
- PII sale a un LLM externo sin aviso.
- App se presenta como asesoría profesional sin serlo.
- Derivados (embeddings/prompts) persisten tras "borrar" el documento.
