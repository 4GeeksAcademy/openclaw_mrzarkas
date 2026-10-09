---
name: mis-proyectos
description: Consulta los proyectos asociados al perfil del estudiante en BreatheCode.
---

## Instrucciones

1. Obtén el secreto `FOURGEEKS_TOKEN` desde el mecanismo de secretos configurado para este entorno. No solicites que se revele su valor ni lo copies a archivos, argumentos, registros o respuestas.
2. Envía una petición `GET` a `https://breathecode.herokuapp.com/v1/assignment/user/me/task?task_type=PROJECT` con la cabecera `Authorization: Token <TOKEN>`, sustituyendo `<TOKEN>` en memoria por el secreto. No sigas redirecciones a otro host ni habilites trazas que puedan exponer la cabecera.
3. Usa exclusivamente la respuesta de ese endpoint, que está limitada al usuario autenticado; no consultes ni combines tareas de otros usuarios.
4. Si la petición tiene éxito, inspecciona la estructura recibida y muestra únicamente los proyectos y los campos que estén presentes y resulten útiles para identificarlos y conocer su estado (por ejemplo, nombre/título, identificador o estado, solo si la API los devuelve). No inventes campos ni valores. Omite datos personales o no pertinentes y no muestres la respuesta completa si contiene información adicional.
5. Si no hay proyectos, indícalo claramente. Si la API devuelve HTTP 401 o 403, informa de que el token no es válido o no tiene autorización, sin mostrarlo. Para otros errores HTTP o de conexión, comunica que no se pudo consultar la lista e indica el estado o error sin revelar el token.
