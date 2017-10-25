# Core Library Test Suite

## Running the test suite

```sh
serulian test karma .
```

### Running against a modified core library

Since the core library is automatically imported by Serulian, a `--vcs-dev-dir` argument should be used when running the test suite, to ensure the local code is used:

```sh
serulian test karma . --vcs-dev-dir=/path/to/core/library/checkout/
```
