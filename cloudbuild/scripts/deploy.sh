code_version=$(python setup.py --version) && \
pip_version=$(yolk -V dynatrace_api | cut -d" " -f2) && \
pw = $(cat decrypted-data.txt) && \
([ "$code_version" != "$pip_version" ] && twine upload dist/* -u $_PYPI_USERNAME -p $pw || echo "No new version")