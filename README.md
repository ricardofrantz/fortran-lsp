# fortran-lsp

Fortran Language Server ([fortls](https://github.com/fortran-lang/fortls)) marketplace plugin for Claude Code.

## Installation

1. **Install fortls:**
   ```bash
   uv tool install fortls
   ```

2. **Add marketplace and install plugin:**
   ```
   /plugins marketplace add https://github.com/ricardofrantz/fortran-lsp
   /plugins install fortls-lsp@fortran-lsp
   ```

## Configuration

Large projects can tune indexing (excluded paths, extra suffixes, preprocessor
definitions) with a `.fortls` file at the project root — see
[plugins/fortls-lsp/README.md](plugins/fortls-lsp/README.md) and the
[fortls options reference](https://fortls.fortran-lang.org/options.html).

## License

MIT
