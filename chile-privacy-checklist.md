# Checklist — Privacidad y datos personales (Chile)

> ⚠️ **NO es asesoría legal.** Orientación de riesgos. Verifica toda norma en la fuente oficial y consulta a un abogado. Ver [DISCLAIMER.md](DISCLAIMER.md).

> **Nota legal:** Chile tiene normativa de protección de datos personales en evolución (entre otras, la Ley 19.628 y una reforma posterior que crea una autoridad de protección de datos). **No cites fechas de vigencia, números de artículo ni plazos de memoria** — pueden estar desactualizados. Para cualquier afirmación sobre la ley, marca **"verificar con fuente oficial (BCN / autoridad de datos) y abogado"**. Tu rol aquí es de inventario y buenas prácticas, no de dictamen legal.

## 1. Inventario de datos (hazlo primero)
- [ ] ¿Qué datos personales se recolectan? (nombre, RUT, email, teléfono, dirección, documentos subidos, IP, logs, analytics, cookies)
- [ ] ¿Hay datos sensibles? (salud, situación socioeconómica, datos de menores, biométricos, ubicación precisa)
- [ ] ¿Dónde se almacena cada dato? (DB, storage, logs, caché, embeddings)
- [ ] ¿Por cuánto tiempo? ¿Hay política de retención y borrado?
- [ ] ¿A qué terceros se envían? (OpenAI, Anthropic, Supabase, Vercel, Railway, Stripe, Mercado Pago, proveedores de email/analytics)
- [ ] ¿Hay transferencia internacional de datos? (la mayoría de los providers anteriores están fuera de Chile → marcar como punto a informar/verificar)

## 2. Principios a respetar (buenas prácticas)
- [ ] **Finalidad:** se usa el dato solo para lo que se declaró.
- [ ] **Minimización:** no se recolecta más de lo necesario.
- [ ] **Transparencia:** el usuario sabe qué se recolecta y por qué.
- [ ] **Seguridad:** datos cifrados en tránsito y reposo; acceso controlado.
- [ ] **Conservación limitada:** no se guardan datos indefinidamente sin razón.
- [ ] **Base/consentimiento:** existe consentimiento o base legítima para el tratamiento (marcar "verificar con abogado" para la base correcta).

## 3. Derechos del usuario
- [ ] ¿Puede el usuario **acceder** a sus datos?
- [ ] ¿**Rectificar**los?
- [ ] ¿**Eliminar** su cuenta y sus datos? (botón/flujo real, no solo "escríbenos")
- [ ] ¿**Oponerse** o **portar** sus datos?
- [ ] ¿Hay un **canal de contacto** visible para solicitudes de datos?

## 4. Política de privacidad
- [ ] ¿Existe y es **visible desde la landing**?
- [ ] ¿Explica claramente qué datos se procesan y para qué?
- [ ] ¿Lista los terceros/proveedores que reciben datos?
- [ ] ¿Menciona transferencia internacional si aplica?
- [ ] ¿Indica retención y cómo ejercer derechos?

## 5. Logs y telemetría
- [ ] ¿Los logs **evitan** guardar datos personales o sensibles? (no logear contenido de documentos, tokens, RUT, prompts con PII)
- [ ] ¿Analytics no envía PII a terceros sin aviso?

## Banderas rojas (Severidad Alta típica)
- Documentos o PII enviados a un LLM/tercero **sin aviso ni consentimiento**.
- Sin política de privacidad visible.
- Sin forma real de borrar datos.
- Datos sensibles en logs o en repos/commits.
