---
name: google drive files
description: Create, update, organize, and retrieve files in Google Drive using the configured Zapier integration.
---

## Instructions

- Use this skill for operations involving files in Google Drive.
- Follow the Google Drive rules defined in `TOOLS.md`.
- Use the Google Drive actions available through Zapier.
- Create new files inside `openclaw_files/` unless explicitly instructed otherwise.
- Prefix new filenames with the creation date using `YYYYMMDD-`.
- Prefer Markdown (`.md`) unless another format is explicitly requested.
- Use descriptive, lowercase, hyphen-separated filenames.
- Update existing files instead of creating duplicates when possible.
- Preserve unrelated content when modifying existing files.
- Report the resulting filename and location after the operation.

## Safety

- Never overwrite an existing file unless explicitly requested.
- Never delete an existing file unless explicitly requested.
