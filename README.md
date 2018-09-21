<!-- [![Build Status](https://travis-ci.org/cyber-fighters/SemantiX.svg?branch=master)](https://travis-ci.org/cyber-fighters/SemantiX) -->

# NetworX

## Goals
* malicious traffic detection
* device function identification

## Setup

### Files
The file `data/paths.json` collects hardcoded paths to data files or other descriptive names of data attributes and has to be created by the user himself. It is not included in the repo for privacy reasons.

### Installation

Jupyter
* install kernel of correct VE with `python -m ipykernel install --user`
* verify with
	```python
	import sys
	sys.executable
	```
	
### Install git hooks
To keep commits in a good style, some checks are executed at different stages of the git work stream. Run
```shell
./.githook/install-hooks.sh
```
to install the hooks.
