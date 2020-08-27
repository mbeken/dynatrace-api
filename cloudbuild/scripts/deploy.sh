code_version=$(python setup.py --version) && \
pip_version=$(yolk -V dynatrace_api | cut -d" " -f2) && \
([ "$code_version" != "$pip_version" ] && twine upload dist/* -u $_PYPI_USERNAME -p $(cat pypi_test_pw.txt) || echo "No new version")