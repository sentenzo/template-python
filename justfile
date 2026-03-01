py_app := "my_app"
py_tests := "tests"
py_dirs := py_app + " " + py_tests

# print the list of all commands
list-commands:
    @just --list --unsorted

# run the app
run:
    @uv run -m {{py_app}}

# create .venv and install all the packages
init:
    uv python install cpython-3.14
    uv venv --python 3.14
    uv sync

# run all the formatters and fix all auto-fixable issues
fix:
    uv run ruff check --fix {{py_dirs}}
    uv run ruff check --select I --fix {{py_dirs}}

# run all the formatters and linters (mypy)
lint:
    uv run ruff check {{py_dirs}}
    uv run ruff check --select I {{py_dirs}}
    uv run mypy {{py_dirs}}

# run all the tests except for those marked "slow"
test:
    uv run pytest {{py_tests}} -vsx -m "not slow"

# run all the tests
test-all:
    uv run pytest {{py_tests}} -vsx
