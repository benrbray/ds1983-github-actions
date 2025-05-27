default: pylint pytest

# run pylint on all *.py files, ignoring files in the tests folder
pylint:
	find . -iname "*.py" -not -path "./tests/*" | xargs -n1 -I {}  pylint --output-format=colorized {}; true

# run tests
pytest:
	PYTHONDONTWRITEBYTECODE=1 pytest -v --color=yes