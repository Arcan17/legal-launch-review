# Referencias legales — Chile (orientación, NO asesoría)

> **LEE ESTO PRIMERO.** Este archivo da una **orientación** para saber de qué trata cada ley y **dónde buscar la fuente oficial**. No es asesoría legal y no reemplaza a un abogado.
>
> **Responsabilidad del usuario:** las leyes cambian, tienen reglamentos, plazos y excepciones que no caben aquí. **Verifica personalmente cada punto en la fuente oficial antes de tomar cualquier decisión.** Si algo afecta tu lanzamiento, consúltalo con un abogado.
>
> **Última verificación de este archivo:** 2026-06-23. Si hoy es mucho después, vuelve a verificar — pudo cambiar.
>
> Cuando uses estas referencias en una revisión, repite siempre: *"dato orientativo, verifícalo en la fuente oficial / con abogado."*

---

## 1. Protección de datos personales — **la más importante para tus apps**

**Ley 21.719** (nueva, reforma íntegra la Ley 19.628).
- **Qué es:** marco de protección de datos personales tipo GDPR. Crea la **Agencia de Protección de Datos Personales (APDP)** con poder de fiscalizar y sancionar.
- **Estado (a verificar):** publicada el 13-dic-2024; se informa **entrada en vigencia el 1-dic-2026**. **Confirma la fecha y el régimen transitorio en la fuente oficial.**
- **Por qué te afecta:** consentimiento/base legal, finalidad, minimización, derechos del titular (acceso, rectificación, cancelación, oposición, portabilidad), seguridad, y **transferencias internacionales** (clave si usas OpenAI/Anthropic/Supabase/Vercel fuera de Chile). Sanciones reportadas de hasta 20.000 UTM o % de ingresos → **verificar montos**.
- **Dónde buscar:** texto oficial en BCN/LeyChile → https://www.bcn.cl/leychile/navegar?idNorma=1209272 · Guía del Estado → https://wikiguias.digital.gob.cl/datos-personales/guia-practica-implementacion-nueva-ley-datos-personales

**Ley 19.628** (vigente hasta que la reemplace la 21.719) — la ley de protección de la vida privada actual. Verifica qué rige hoy vs. en el período de transición.

## 2. Ciberseguridad

**Ley 21.663 — Ley Marco de Ciberseguridad.**
- **Qué es:** obligaciones de gestión de riesgo y **reporte de incidentes**; crea la **Agencia Nacional de Ciberseguridad (ANCI)**.
- **Estado (a verificar):** se informa con artículos clave **en vigencia desde el 1-mar-2025**. **Importante:** aplica sobre todo a **Servicios Esenciales** y **Operadores de Importancia Vital (OIV)** — una app pequeña puede **no** estar obligada, pero conviene saber si caes en esa categoría. **Verifica si te aplica.**
- **Por qué puede afectarte:** si te clasifican, hay deberes de controles técnicos (MFA, backups, cifrado), registro de riesgos y **notificación de incidentes en plazos estrictos** (se reportan ~3h alerta temprana / 72h informe). **Verificar plazos y si aplica a tu caso.**
- **Dónde buscar:** ANCI → https://anci.gob.cl/normativa/ley-marco-ciberseguridad/ · BCN → https://www.bcn.cl/leychile/navegar?idNorma=1202434

## 3. Consumidor y comercio electrónico (solo si cobras)

**Ley 19.496 — Protección de los Derechos de los Consumidores** (fiscaliza SERNAC).
- **Qué exige (orientación, verificar con SERNAC):**
  - **Derecho a retracto:** se informa **10 días** desde la recepción para compras online. Si **no** envías **confirmación escrita** de las condiciones, el plazo se extendería a **90 días**. **Verificar.**
  - Informar **precio total**, condiciones de contratación, stock y **exclusiones al retracto** de forma previa y destacada.
  - La exclusión del retracto debe avisarse antes de contratar, en español y de forma destacada.
- **Dónde buscar:** SERNAC comercio electrónico → https://www.sernac.cl/portal/604/w3-propertyvalue-20982.html · Derecho a retracto → https://www.sernac.cl/portal/617/w3-propertyvalue-64530.html

## 4. Inteligencia Artificial — **proyecto, todavía NO es ley**

**Proyecto de Ley que regula los sistemas de IA** (Boletín 16821-19).
- **Estado (a verificar):** **en tramitación en el Senado** (no vigente). Propone clasificar sistemas de IA por **nivel de riesgo** (inaceptable / alto / limitado / sin riesgo evidente), estilo AI Act europeo.
- **Por qué seguirlo:** si se aprueba, podría imponer obligaciones según el riesgo de tu app. **Hoy no obliga**, pero conviene diseñar pensando en ello (transparencia, no usos prohibidos).
- **Dónde buscar:** tramitación en el Senado → https://tramitacion.senado.cl/appsenado/templates/tramitacion/index.php?boletin_ini=16821-19 · MinCiencia → https://www.minciencia.gob.cl/areas/inteligencia-artificial/

## 5. Otras que pueden importar según la app (verificar si aplican)

- **Firma electrónica y documento electrónico (Ley 19.799)** — si manejas contratos/firmas digitales.
- **Delitos informáticos (Ley 21.459)** — tipifica delitos (acceso ilícito, fraude informático); relevante para diseño de seguridad y términos de uso.
- **Propiedad intelectual (Ley 17.336)** — derechos sobre código, imágenes, fuentes, datasets y textos que uses o generes.
- **Normativa Fintech (Ley 21.521)** — solo si tocas pagos/servicios financieros regulados.

---

## Cómo usar esto en una revisión

1. Da el resumen orientativo de la ley que aplica.
2. **Marca siempre** "verificar con fuente oficial / abogado" y entrega el link de arriba.
3. Nunca afirmes una fecha, monto o plazo como definitivo — di "se informa X, confírmalo".
4. Distingue **vigente** (1, 2, 3) de **proyecto** (4) — no trates un proyecto como obligación actual.
