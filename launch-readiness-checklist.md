# Checklist — Preparación de lanzamiento

> ⚠️ **NO es asesoría legal.** Orientación de riesgos. Verifica toda norma en la fuente oficial y consulta a un abogado. Ver [DISCLAIMER.md](DISCLAIMER.md).

> Seguridad mínima, Términos y Condiciones, e-commerce (si cobra) y licencias. Marca como bloqueante lo que exponga datos o engañe al usuario.

## 1. Seguridad mínima
- [ ] **Autenticación** y control de acceso por usuario/organización (un usuario no ve datos de otro).
- [ ] **Secrets** fuera del repo (variables de entorno, no hardcodeadas; revisar historial de git).
- [ ] **Cifrado** en tránsito (HTTPS) y en reposo para datos sensibles.
- [ ] **Rate limiting** en endpoints públicos y en llamadas a LLM (costo + abuso).
- [ ] **Manejo de errores** que no filtre stacktraces, datos ni secrets al usuario.
- [ ] **Backups** y plan de recuperación.
- [ ] **Eliminación de datos** real (cuenta + derivados).
- [ ] Dependencias sin vulnerabilidades conocidas críticas (audit).

## 2. Términos y Condiciones
- [ ] Qué hace la app y qué **no garantiza**.
- [ ] **Responsabilidad limitada**.
- [ ] Reglas de uso aceptable; prohibición de subir datos ilegales o de terceros sin permiso.
- [ ] **Propiedad intelectual** (de la app y del contenido del usuario).
- [ ] Cancelación de cuenta.
- [ ] Jurisdicción aplicable (marcar "verificar con abogado").
- [ ] Visibles desde la landing.

> Puedes ofrecer un **borrador** de T&C / política, pero etiquétalo: *"Borrador — revisar con abogado antes de publicar."* No lo presentes como válido.

## 3. E-commerce (solo si hay pagos)
> Reglas de consumo y comercio electrónico en Chile (SERNAC). **No cites plazos exactos de retracto ni reembolso de memoria** — márcalos "verificar con fuente oficial (SERNAC)".
- [ ] **Precio total claro** antes de pagar (impuestos, cargos incluidos).
- [ ] Medio de pago y condiciones de contratación informados.
- [ ] **Confirmación escrita** de la compra/condiciones al usuario.
- [ ] **Derecho a retracto** cuando aplique (plazo → verificar SERNAC).
- [ ] Política de **reembolso** clara.
- [ ] Stock/disponibilidad y exclusiones informadas.
- [ ] Canal de soporte/contacto.

## 4. Licencias y assets
- [ ] Dependencias open source revisadas; sin licencias incompatibles con tu uso (ej. copyleft fuerte en software cerrado) → marcar "verificar".
- [ ] Imágenes, íconos, fuentes, templates, datasets y textos con **permiso/licencia** de uso.
- [ ] Sin código copiado sin atribución.

## 5. Bloqueantes de lanzamiento (resumen)
Marca **Sí bloquea** si:
- Falta política de privacidad o T&C visibles.
- PII/datos sensibles expuestos, en logs, o enviados a terceros sin aviso.
- Secrets en el repo.
- Un usuario puede acceder a datos de otro.
- La landing promete algo que el código no cumple.
- Se cobra sin precio total claro ni condiciones de contratación.
