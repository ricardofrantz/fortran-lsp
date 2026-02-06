# fortls-lsp

Fortran Language Server ([fortls](https://github.com/fortran-lang/fortls)) plugin for Claude Code.

## Features

- Hover information for variables, functions, subroutines
- Go to definition / Find references
- Diagnostics (syntax errors, unused variables)
- Autocomplete for keywords, intrinsics, user-defined symbols

## Supported File Extensions

| Extension | Format |
|-----------|--------|
| `.f`, `.F` | Fixed-form |
| `.for`, `.FOR` | Fixed-form (legacy) |
| `.f90`, `.F90` | Free-form (Fortran 90) |
| `.f95`, `.F95` | Free-form (Fortran 95) |
| `.f03`, `.F03` | Free-form (Fortran 2003) |
| `.f08`, `.F08` | Free-form (Fortran 2008) |

Uppercase variants (`.F90`, etc.) are preprocessed with `cpp` before compilation.

## Prerequisites

Install fortls before enabling this plugin:

```bash
uv tool install fortls    # recommended
pip install fortls         # alternative
```

## Configuration

fortls reads project-level settings from `.fortlsrc`, `.fortls.json`, or `.fortls`. See [fortls options](https://fortls.fortran-lang.org/options.html).
