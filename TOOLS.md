# TOOLS.md - Tool Usage

This file defines project-specific rules for using available tools.

Google Drive and Google Calendar are integrated through Zapier. Always use the available Zapier actions for these services instead of attempting to access them through alternative integrations.

## Google Drive

- Always use the Google Drive actions available through Zapier to create or modify files.
- Always create new files inside the `openclaw_files/` directory unless explicitly instructed otherwise.
- Always prefix generated filenames with the creation date using `YYYYMMDD-`, for example: `20261005-project-notes.md`.
- Prefer Markdown (`.md`) for generated documents unless another format is explicitly requested.
- Use descriptive, lowercase, hyphen-separated filenames whenever possible.
- When updating an existing document, modify the existing file instead of creating a duplicate unless a new version is explicitly requested.
- Never overwrite an existing file unless explicitly requested.

## Google Calendar

- Always use the Google Calendar actions available through Zapier to create, modify, or delete calendar events.
- Before creating an event, verify the date, start time, duration, and timezone from the available context.
- Use clear and descriptive event titles.
- Include relevant context in the event description when available.
- Never modify or delete an existing calendar event unless explicitly requested.

## General Tool Rules

- Prefer the dedicated Zapier action for an operation when one is available.
- Follow the corresponding skill instructions when a tool requires a specific procedure.
- Do not use alternative tools to bypass the rules defined in this file.
- Ask for clarification only when required information cannot be reliably inferred from the available context.
