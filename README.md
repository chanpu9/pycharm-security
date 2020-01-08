# PyCharm Python Security plugin

![](src/main/resources/META-INF/pluginIcon.svg)

A plugin to run security checks for common flaws in Python code and suggest quick fixes.

![](src/main/resources/META-INF/screenshot.png)

## SafetyDB

This plugin will check the installed packages in your Python projects against the SafetyDB and raise a warning for any vulnerabilities.

![](src/main/resources/META-INF/safetydb-screenshot.png)

## Current checks

* [YML100](doc/checks/YML100.md) Use of `yaml.load()` can cause arbitrary code execution. Suggests and has a "Quick Fix" to replace with `safe_load()` using existing arguments
* [FLK100](doc/checks/FLK100.md) Use of `debug=True` when instantiating flask applications
* [RQ100](doc/checks/RQ100.md) Use of `verify=False` when making HTTP requests using the `requests` package
* [RQ101](doc/checks/RQ101.md) Use of `verify=False` when making HTTP requests using the `httpx` package
* [PR100](doc/checks/PR100.md) Use of `shell=True` when running `subprocess.call` from the standard library
* [TMP100](doc/checks/TMP100.md) Use of `tempfile.mktemp`
* [DJG100](doc/checks/DJG100.md) Setting `DEBUG = True` in a `settings.py` file (assumed Django project settings)

## Release History

### 1.0.4

* Checks installed packages against safetydb and alerts for any known vulnerabilities

### 1.0.3

* Added django debug mode check
* Added `tempfile.mktemp` check with fixer to replace `tempfile.mkstemp` with existing arguments
* Added subprocess.call(shell=true) check
* Added httpx no-verify check
* Added requests no-verify check

### 1.0.2

* Added flask debug mode check
* Added pyyaml load check

