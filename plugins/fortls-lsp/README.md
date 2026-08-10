# fortls-lsp

Fortran language server ([fortls](https://github.com/fortran-lang/fortls)) for Claude Code, providing code intelligence and diagnostics.

## Supported Extensions

Free-form: `.f90`, `.f95`, `.f03`, `.f08` — Fixed-form: `.f`, `.f77`, `.for` — Preprocessed: `.fpp` — plus the uppercase variants of each.

## Installation

Install fortls using any of these methods:

### Via uv (recommended)
```bash
uv tool install fortls
```

### Via pipx
```bash
pipx install fortls
```

### Via pip
```bash
pip install fortls
```

## Project Configuration

fortls reads an optional `.fortls` JSON file at the project root. Useful for large trees:

```json
{
  "excl_paths": ["build", "third_party"],
  "incl_suffixes": [".inc"],
  "pp_defs": {"MY_MACRO": "1"}
}
```

See the [fortls options reference](https://fortls.fortran-lang.org/options.html) for all settings. Note: when a `.fortls` file is present, its values replace any command-line arguments per key (`pp_defs` in particular resets unless restated in the file).

## More Information
- [fortls Documentation](https://fortls.fortran-lang.org/)
- [GitHub Repository](https://github.com/fortran-lang/fortls)
