# Conectar las opiniones con Supabase

La página ya tiene preparada la conexión. Supabase guardará las opiniones para compartirlas entre visitantes; GitHub Pages seguirá publicando el catálogo. No hace falta iniciar sesión para enviar una opinión.

## Pasos para activarla

1. Crea un proyecto en https://supabase.com/dashboard.
2. En SQL Editor, pega y ejecuta el archivo supabase/schema.sql.
3. En Project Settings → API, copia el Project URL y la Publishable key. En proyectos antiguos puede aparecer como anon key.
4. Abre assets/supabase-config.js y reemplaza los dos valores de ejemplo por tu URL y Publishable key.
5. Sube la carpeta CatalogoWeb completa al repositorio de GitHub Pages. Desde entonces las opiniones podrán consultarse desde distintos dispositivos.
6. Para aprobar una opinión, abre Table Editor → auro_reviews en Supabase y cambia status de pending a published. La página pública muestra solo opiniones aprobadas.

## Sobre registro y seguridad

Explorar y comentar es público; el nombre es opcional. Las cuentas reales no están conectadas todavía. El botón Mi espacio guarda un perfil local en cada navegador. Más adelante se puede añadir Supabase Auth si quieres que los usuarios tengan cuentas.

La Publishable key o anon key está diseñada para usarse en el navegador y puede estar en el repositorio si las políticas RLS están activas. Nunca copies una clave secret o service_role al sitio ni a GitHub.

Hasta que completes assets/supabase-config.js, la página permanece en modo local: los comentarios no se comparten.
