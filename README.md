# gurl-cython
Cython wrapper around the Chromium GURL component.
Only the Initialization, getter, checker, and resolve functions have been implemented.

Run parsers with - 
```
from pygurl import Batched

parse_result = Batched('https://github.com/')
