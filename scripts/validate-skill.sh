#!/usr/bin/env bash
# Validación básica de estructura del skill legal-launch-review.
# Uso: bash scripts/validate-skill.sh   (desde la raíz del repo)
set -euo pipefail

cd "$(dirname "$0")/.."

fail=0
ok()   { printf '  ✅ %s\n' "$1"; }
bad()  { printf '  ❌ %s\n' "$1"; fail=1; }

echo "Validando legal-launch-review…"

# 1. Archivos requeridos
for f in SKILL.md DISCLAIMER.md LICENSE README.md \
         chile-privacy-checklist.md ai-app-checklist.md \
         launch-readiness-checklist.md referencias-legales.md; do
  if [ -f "$f" ]; then ok "existe $f"; else bad "falta $f"; fi
done

# 2. Frontmatter YAML válido en SKILL.md
if [ "$(head -1 SKILL.md)" = "---" ]; then ok "SKILL.md abre con ---"; else bad "SKILL.md no abre con ---"; fi
grep -q '^name:' SKILL.md        && ok "SKILL.md tiene name:"        || bad "SKILL.md sin name:"
grep -q '^description:' SKILL.md  && ok "SKILL.md tiene description:" || bad "SKILL.md sin description:"
# segundo --- (cierre del frontmatter) dentro de las primeras 10 líneas
if [ "$(head -10 SKILL.md | grep -c '^---$')" -ge 2 ]; then ok "frontmatter cerrado"; else bad "frontmatter sin cerrar"; fi

# 3. Disclaimer presente
grep -qi 'no es asesor' DISCLAIMER.md && ok "DISCLAIMER con aviso legal" || bad "DISCLAIMER sin aviso"

echo ""
if [ "$fail" -eq 0 ]; then
  echo "✅ Skill válido."
else
  echo "❌ Hay problemas (ver arriba)."; exit 1
fi
