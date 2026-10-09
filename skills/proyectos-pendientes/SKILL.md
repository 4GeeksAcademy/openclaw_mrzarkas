---
name: proyectos-pendientes
description: Consulta los proyectos pendientes del estudiante en BreatheCode.
---

## Instrucciones

1. Obtén el secreto `FOURGEEKS_TOKEN` desde el mecanismo de secretos configurado para este entorno. No solicites que se revele su valor ni lo copies a archivos, argumentos, registros o respuestas.
2. Envía una petición `GET` a `https://breathecode.herokuapp.com/v1/assignment/user/me/task?task_type=PROJECT&task_status=PENDING` con la cabecera `Authorization: Token <TOKEN>`, sustituyendo `<TOKEN>` en memoria por el secreto. No sigas redirecciones a otro host ni habilites trazas que puedan exponer la cabecera.
3. Usa exclusivamente la respuesta de ese endpoint, limitada al usuario autenticado. Devuelve únicamente los proyectos pendientes de esa respuesta; no consultes ni combines tareas de otros usuarios ni incluyas proyectos con otro estado.
4. Muestra únicamente la información relevante que esté presente en la respuesta para identificar cada proyecto y conocer su estado (por ejemplo, nombre/título, identificador o estado, solo si la API los devuelve). No inventes campos ni valores, y omite datos personales o no pertinentes.
5. Si la respuesta no contiene proyectos pendientes, indícalo claramente. Si la API devuelve HTTP 401 o 403, informa de que el token no es válido o no tiene autorización, sin mostrarlo. Para otros errores HTTP o de conexión, comunica que no se pudo consultar la lista e indica el estado o error sin revelar el token.
