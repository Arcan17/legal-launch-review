# Ejemplo de reporte — SaaS con pagos (suscripción mensual)

> Ejemplo ilustrativo del formato de salida del skill. Los hallazgos son ficticios.

## 🚦 ¿Puedo lanzar?

🟡 **SÍ, pero con cuidado** — nada bloquea por completo, pero hay temas de consumidor que debes cerrar antes de cobrarle a usuarios reales.

**En una frase:** cobras una suscripción pero no muestras el precio total con claridad antes de pagar ni explicas reembolsos/retracto, que es lo que la ley del consumidor espera.

---

## 🟡 Arreglar antes de cobrarle a usuarios de verdad

### 1. No muestras el precio total claro antes de pagar
🔑 **En simple:** el usuario no ve con claridad cuánto va a pagar en total (impuestos incluidos) antes de confirmar. Eso genera reclamos y problemas con SERNAC.
- **¿Qué tan grave?:** 🟡 Media
- **Cómo arreglarlo:** mostrar el precio final, qué incluye y la periodicidad, antes del botón de pago.
- **¿Tema de abogado?:** Sí — reglas de comercio electrónico (orientativo, verifica con SERNAC).
- **Dónde está:** `checkout/PricingPage.tsx`

### 2. No hay confirmación escrita de la compra ni política de reembolso/retracto
🔑 **En simple:** tras pagar no envías un correo confirmando qué contrató y bajo qué condiciones, y no explicas si puede arrepentirse. Si no confirmas por escrito, el plazo de arrepentimiento puede ampliarse mucho.
- **¿Qué tan grave?:** 🟡 Media
- **Cómo arreglarlo:** enviar email de confirmación con condiciones; publicar política de reembolso/retracto.
- **¿Tema de abogado?:** Sí — derecho a retracto y confirmación (orientativo, verifica con SERNAC).

### 3. Cobras con un proveedor externo y no lo informas en privacidad
🔑 **En simple:** mandas datos de pago a un tercero (ej. Stripe/Mercado Pago) y tu aviso de privacidad no lo dice.
- **Cómo arreglarlo:** listar el proveedor de pagos en el aviso de privacidad.

---

## 🟢 Mejoras menores
- **4.** Sin canal de soporte/contacto visible para reclamos. Agrega un correo o formulario.

---

## Resumen
- **Bloqueantes: 0**, pero 3 temas de consumidor (#1–#3) que conviene cerrar antes de cobrar.
- **Lo bueno:** la autenticación y el control de acceso por cuenta están bien resueltos.

*Esto no es asesoría legal. Confirma los puntos marcados con un abogado antes de producción.*
