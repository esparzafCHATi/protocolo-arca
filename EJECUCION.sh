
#!/bin/bash
# EJECUCION.sh: Script para la sincronización inicial del Arca

echo "Intentando sincronizar el Arca con GitHub..."
echo "Por favor, introduce tu nombre de usuario de GitHub cuando se te solicite."
echo "Cuando se te pida la contraseña, introduce tu Personal Access Token (PAT)."

# Navegar al directorio del script (y por tanto, del repositorio)
cd "$(dirname "$0")"

# Ejecutar el push
git push origin master

# Verificar el resultado
if [ $? -eq 0 ]; then
  echo "¡Sincronización completada con éxito!"
  echo "El Arca ahora tiene su respaldo en la nube."
else
  echo "Error en la sincronización. Por favor, revisa el mensaje de error y tu conexión a internet."
fi
