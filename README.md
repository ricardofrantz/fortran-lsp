# fortls — Fortran Language Server Plugin for Claude Code

Provides Fortran code intelligence via [fortls](https://github.com/fortran-lang/fortls) for Claude Code.

## Features

- Hover information for variables, functions, subroutines
- Go to definition / Find references
- Diagnostics (syntax errors, unused variables)
- Autocomplete for keywords, intrinsics, user-defined symbols
- Support for all Fortran variants: fixed-form (`.f`, `.for`), free-form (`.f90`–`.f08`), and preprocessed (`.F90`–`.F08`)

## Installation

```bash
claude /install-plugin https://github.com/ricardofrantz/fortran-lsp
```

fortls will be auto-installed on first session start (via `uv tool install` or `pip install`).

### Manual fortls installation

```bash
uv tool install fortls    # recommended
pip install fortls         # alternative
```

## Plugin Structure

```
fortls/
├── .claude-plugin/
│   └── plugin.json          # Plugin metadata
├── hooks/
│   ├── hooks.json           # SessionStart hook config
│   └── check-fortls.sh      # Auto-install script
└── .lsp.json                # LSP server configuration
```

## Supported File Extensions

| Extension | Format |
|-----------|--------|
| `.f`, `.F` | Fixed-form |
| `.for`, `.FOR` | Fixed-form (legacy) |
| `.f90`, `.F90` | Free-form (Fortran 90) |
| `.f95`, `.F95` | Free-form (Fortran 95) |
| `.f03`, `.F03` | Free-form (Fortran 2003) |
| `.f08`, `.F08` | Free-form (Fortran 2008) |

Uppercase variants (`.F90`, etc.) are typically preprocessed with `cpp` before compilation.

## Configuration

fortls reads project-level configuration from `.fortlsrc`, `.fortls.json`, or `.fortls` in the project root. See [fortls documentation](https://fortls.fortran-lang.org/options.html) for available options.

## License

MIT
