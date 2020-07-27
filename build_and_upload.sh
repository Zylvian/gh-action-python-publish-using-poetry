#!/bin/bash

set -e

poetry build
TWINE_USERNAME="$INPUT_PYPI_USERNAME" TWINE_PASSWORD="$INPUT_PYPI_PASSWORD" twine upload dist/* --repository-url https://pypi.org/project/wommit/
