code_version=$(python setup.py --version) && \
pip_version=$(yolk -V dynatrace_api | cut -d" " -f2) && \
([ "$code_version" != "$pip_version" ] && twine upload --repository $_PYPI_ENV dist/* -u $_PYPI_USERNAME -p $(cat decrypted-data.txt)  || echo "No new version")