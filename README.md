# Auro-Art · catálogo web

Sitio estático en español para mostrar confecciones y decoración del hogar. No requiere instalar programas ni configurar un servidor.

## Abrir y editar

Abre esta carpeta en Visual Studio Insiders y edita `index.html`. Para ver la página, abre ese archivo en un navegador. La carpeta `assets` contiene la imagen de referencia que compartiste.

## Personalizar el catálogo

- Los productos, categorías y textos están al inicio del bloque `<script>` en `index.html`.
- Cada producto usa una imagen de Unsplash. Sustituye el identificador de `img` por otro identificador de imagen, o cambia `drawProducts` para apuntar a tus propias imágenes dentro de `assets`.
- El catálogo informa que los diseños son personalizados y deriva las consultas de precio a WhatsApp.
- Los enlaces de WhatsApp y Facebook están al inicio del script como `PHONE` y `FACEBOOK`.

## Perfil y favoritos

Los favoritos y el perfil opcional se guardan únicamente en el navegador actual. No se crea una cuenta en línea ni se sincroniza información entre dispositivos; para cuentas reales y seguras habría que conectar un servicio de autenticación y una base de datos.

## Publicar con GitHub Pages

Sube `index.html`, `README.md` y la carpeta `assets` a un repositorio. En GitHub, abre **Settings → Pages**, elige publicar desde la rama principal y la carpeta raíz, y guarda. Las imágenes de catálogo se cargan desde Unsplash, así que requieren conexión a Internet.
