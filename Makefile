# Makefile script

# Upgrade pip and install dependencies from requirements.txt
install:
	pip install --upgrade pip
	pip install --force-reinstall black
	pip install -r requirements.txt

# Run tests using pytest
test:
	python -m pytest -vv test_hello.py

# Format Python files using black
format:
	black==<22.1.0>
        click==<8.1.7>
        # ... other dependencies

# Lint Python files using pylint, with specific rules disabled
lint:
	pylint --disable=R,C hello.py

# Define 'all' to run install, lint, and test sequentially
all: install lint test
