# Template adaptation checklist
## Software requirements
- [ ] [**just**](https://github.com/casey/just) — a command runner
- [ ] [**uv**](https://docs.astral.sh/uv/) — a Python package- and project-manager
- [ ] [**python3.14**](https://www.python.org/downloads/) (can be installed via `uv`)


## `justfile`
- [ ] change the `py_app` value to the name of your app directory

## Files and directories
- [ ] change the `my_app` directory name to the name of your application (exactly the same as the `py_app` parameter)
- [ ] add the `.env` file if you need it
- [ ] (optional) add a `LICENSE` file

## `uv`
- [ ] (optional) delete `uv.lock` file in order to get the last versions of packages
- [ ] init your new virtual environment with one of:
  - `just init` 
  - `uv python install cpython-3.14 && uv venv --python 3.14 && uv sync`
- [ ] add the dependencies required (if any) with:
  - `uv add python-dotenv` 
- [ ] add the development dependencies (if any) with: 
  - `uv add --dev pylint`

## `./pyproject.toml`
- [ ] change `name` and `description`
- [ ] change the `license` field if you have any

### (optional) `[tool.ruff]`
- [ ] change the `line-length` value if, again, you want to omit the [PEP-8 guidelines](https://peps.python.org/pep-0008/#maximum-line-length)


## The final checkup
- [ ] check the linting functionality with `just lint` (no errors should occur)
- [ ] check tests with `just test-all`
- [ ] finally check the application itself with `just run`
- [ ] if everything works fine, delete all the text in this document and replace it with your app's actual README
