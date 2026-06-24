# Ejemplo de reporte — App RAG de RRHH (consultas sobre documentos internos)

> Ejemplo ilustrativo del formato de salida del skill. Los hallazgos son ficticios.

## 🚦 ¿Puedo lanzar?

🔴 **NO TODAVÍA** — hay 2 cosas que arreglar primero.

**En una frase:** la app promete que "borra los datos automáticamente" y que el usuario puede contactarte por privacidad, pero el borrado no está confirmado en el código y el correo de contacto es un texto de relleno.

---

## ✅ Lo que ya está bien

- El sistema que oculta el RUT/correo **antes** de mandarlo a la IA funciona de verdad (verificado en `app/services/pipeline.py`: el orden es scrub → embed → LLM).
- Aislamiento por sesión: un usuario no puede ver los documentos de otro.
- La transferencia internacional (texto sin PII a EE.UU.) está divulgada en el aviso.

---

## 🔴 Lo que bloquea el lanzamiento

### 1. Los datos personales podrían quedarse guardados más de lo que prometes
🔑 **En simple:** cuando alguien escribe un RUT o correo, lo guardas un par de horas… pero nada confirma que se borre después. Tu aviso dice "no guardamos copias". Eso hoy no se cumple del todo.

- **¿Qué tan grave?:** 🔴 Alta
- **¿Por qué importa?:** prometes algo que el código no garantiza. Es como decir "esto se autodestruye" sin poner el temporizador.
- **Cómo arreglarlo:** crear la tarea automática que borre de verdad los datos vencidos. O cifrarlos mientras esperan.
- **¿Bloquea el lanzamiento?:** Sí
- **¿Tema de abogado?:** Sí — retención/eliminación de datos (orientativo, verifica en fuente oficial).
- **Dónde está:** `app/services/pipeline.py` (persistencia de tokens PII)

### 2. El correo de contacto de privacidad es un texto de relleno
🔑 **En simple:** tu página de privacidad dice "escríbenos a [tu correo]" — literalmente con los corchetes. Nadie puede contactarte.

- **¿Qué tan grave?:** 🔴 Alta
- **¿Por qué importa?:** la ley te obliga a dar una forma real de ejercer derechos (pedir o borrar datos). Con un placeholder, no la hay.
- **Cómo arreglarlo:** poner tu correo real. 1 minuto.
- **¿Bloquea el lanzamiento?:** Sí
- **Dónde está:** `frontend/app/privacidad/page.tsx`

---

## 🟡 Arreglar antes de tener usuarios de verdad

### 3. Cualquiera puede usar tu API gratis y dispararte la cuenta
🔑 **En simple:** tu API está abierta a todo el mundo, sin clave ni límite, y cada consulta le cuesta plata a tu LLM. Alguien podría llamarla miles de veces.
- **Cómo arreglarlo:** límite de consultas por usuario y cerrar CORS a tu dominio. · **Dónde:** `app/core/config.py`

### 4. Solo borras RUT, correo y teléfono — no nombres ni direcciones
🔑 **En simple:** si alguien pega un nombre o un dato de salud, eso SÍ llega a la IA. Tu aviso de "no subas datos reales" te cubre, pero tenlo claro.

---

## Resumen
- **Bloqueantes: 2** (#1 borrado real, #2 contacto). Ambos acotados.
- **Lo bueno:** el sistema que oculta el RUT/correo antes de mandarlo a la IA funciona de verdad. La base es sólida.

*Esto no es asesoría legal. Confirma los puntos marcados con un abogado antes de producción.*
