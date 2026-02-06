# fortran-lsp

Fortran Language Server ([fortls](https://github.com/fortran-lang/fortls)) marketplace plugin for Claude Code.

## Installation

1. **Install fortls:**
   ```bash
   uv tool install fortls    # recommended
   pip install fortls         # alternative
   ```

2. **Add marketplace and install plugin:**
   ```
   /plugins marketplace add https://github.com/ricardofrantz/fortran-lsp
   /plugins install fortls-lsp@fortran-lsp
   ```

## Features

- Hover information for variables, functions, subroutines
- Go to definition / Find references
- Diagnostics (syntax errors, unused variables)
- Autocomplete for keywords, intrinsics, user-defined symbols
- All Fortran variants: fixed-form (`.f`, `.for`), free-form (`.f90`–`.f08`), preprocessed (`.F90`–`.F08`)

## Supported Extensions

`.f` `.f90` `.f95` `.f03` `.f08` `.F` `.F90` `.F95` `.F03` `.F08` `.for` `.FOR`

## License

MIT
