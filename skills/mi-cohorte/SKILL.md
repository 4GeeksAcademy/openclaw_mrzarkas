---
name: mi-cohorte
description: Obtiene la cohorte activa del estudiante en BreatheCode.
---

## Instrucciones

1. Obtén el secreto `FOURGEEKS_TOKEN` desde el mecanismo de secretos configurado para este entorno. No solicites que se revele su valor ni lo copies a archivos, argumentos, registros o respuestas.
2. Envía una petición `GET` a `https://breathecode.herokuapp.com/v1/admissions/academy/cohort/me?educational_status=ACTIVE` con la cabecera `Authorization: Token <TOKEN>`, sustituyendo `<TOKEN>` en memoria por el secreto. No sigas redirecciones a otro host ni habilites trazas que puedan exponer la cabecera.
3. Usa exclusivamente la respuesta de ese endpoint para localizar la cohorte activa del usuario autenticado; no consultes ni combines cohortes de otras personas.
4. Muestra únicamente los campos presentes entre `id`, `name`, `slug`, `schedule`, `role` y `educational_status`. No inventes campos ni valores y omite cualquier otro dato de la respuesta.
5. Si la respuesta no contiene una cohorte activa, indícalo claramente. Si la API devuelve HTTP 401 o 403, informa de que el token no es válido o no tiene autorización, sin mostrarlo. Para otros errores HTTP o de conexión, comunica que no se pudo consultar la cohorte e indica el estado o error sin revelar el token.
