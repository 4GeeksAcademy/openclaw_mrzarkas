---
name: mi-actividad
description: Consulta la actividad de aprendizaje del estudiante en BreatheCode.
---

## Instrucciones

1. Obtén el secreto `FOURGEEKS_TOKEN` desde el mecanismo de secretos configurado para este entorno. No solicites que se revele su valor ni lo copies a archivos, argumentos, registros o respuestas.
2. Envía una petición `GET` a `https://breathecode.herokuapp.com/v1/activity/me` con la cabecera `Authorization: Token <TOKEN>`, sustituyendo `<TOKEN>` en memoria por el secreto. No sigas redirecciones a otro host ni habilites trazas que puedan exponer la cabecera.
3. Recupera únicamente la actividad correspondiente al usuario autenticado. Si el usuario proporciona un filtro `cohort`, añádelo como parámetro de consulta. Si indica un rango temporal, envía `date_start` y `date_end` en formato `YYYY-MM-DD`; no inventes ni completes fechas que no haya indicado. Codifica correctamente los valores de los parámetros.
4. Presenta solo métricas y valores que estén realmente presentes en la respuesta de la API, sin inferir, calcular ni inventar datos. Omite información irrelevante y no muestres la respuesta completa si contiene datos ajenos a las métricas solicitadas.
5. Si la respuesta no contiene actividad o métricas, indícalo claramente. Si la API devuelve HTTP 401 o 403, informa de que el token no es válido o no tiene autorización, sin mostrarlo. Para otros errores HTTP o de conexión, comunica que no se pudo consultar la actividad e indica el estado o error sin revelar el token.
