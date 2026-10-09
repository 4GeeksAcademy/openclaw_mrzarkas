---
name: estado-proyectos
description: Consulta y resume el estado de los proyectos asignados al estudiante en BreatheCode.
---

## Instrucciones

1. Obtén el secreto `FOURGEEKS_TOKEN` desde el mecanismo de secretos configurado para este entorno. No solicites que se revele su valor ni lo copies a archivos, argumentos, registros o respuestas.
2. Envía una petición `GET` a `https://breathecode.herokuapp.com/v1/assignment/user/me/task?task_type=PROJECT` con la cabecera `Authorization: Token <TOKEN>`, sustituyendo `<TOKEN>` en memoria por el secreto. No sigas redirecciones a otro host ni habilites trazas que puedan exponer la cabecera.
3. Usa exclusivamente la respuesta de ese endpoint, correspondiente al usuario autenticado. No consultes ni combines tareas de otros usuarios.
4. Recorre los proyectos devueltos y clasifica cada uno según su campo `task_status`. Considera únicamente los estados `PENDING`, `DONE`, `APPROVED` y `REJECTED`. No inventes estados adicionales ni asignes un estado cuando el campo falte o tenga otro valor; informa aparte si hay proyectos sin un estado reconocido, sin agruparlos como un estado nuevo.
5. Genera primero un resumen con el número de proyectos en cada uno de los cuatro estados permitidos, mostrando también los estados con contador 0. Después muestra los proyectos agrupados por estado. Para cada proyecto incluye solo información presente y útil para identificarlo (por ejemplo, nombre/título o identificador) y su estado; no inventes campos ni valores, y omite datos personales o no pertinentes.
6. Si no hay proyectos, indica que no existen proyectos y muestra los cuatro contadores a 0. Si la API devuelve HTTP 401 o 403, informa de que el token no es válido o no tiene autorización, sin mostrarlo. Para otros errores HTTP o de conexión, comunica que no se pudo consultar los proyectos e indica el estado o error sin revelar el token.
