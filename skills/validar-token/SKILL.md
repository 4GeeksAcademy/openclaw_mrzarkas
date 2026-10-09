---
name: validar-token
description: Valida que el token configurado permite autenticarse correctamente contra la API de BreatheCode.
---

## Instrucciones

1. Obtén el secreto `FOURGEEKS_TOKEN` desde el mecanismo de secretos configurado para este entorno. No solicites que se revele su valor ni lo copies a archivos, argumentos, salida de consola, registros o respuestas.
2. Envía una petición `GET` a `https://breathecode.herokuapp.com/v1/admissions/user/me` con la cabecera `Authorization: Token <TOKEN>`, sustituyendo `<TOKEN>` en memoria por el secreto. No sigas redirecciones a otro host ni habilites trazas que puedan exponer la cabecera.
3. Evalúa únicamente el código HTTP de la respuesta; no muestres ni incluyas los datos del usuario.
4. Si la respuesta es satisfactoria (HTTP 2xx) y devuelve correctamente el usuario, informa: **El token es válido.**
5. Si responde HTTP 401 o 403, informa: **El token no es válido o no tiene autorización.**
6. Para cualquier otro código HTTP o error de conexión, informa que no se pudo validar el token e indica el estado o error de forma que no revele el secreto. No afirmes que es inválido salvo ante HTTP 401 o 403.
