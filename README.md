# Brotli Action
A GitHub Action for compressing assets with the Brotli compression algorithm.

## Usage
To integrate this Action in your workflow, add a step that uses `Timmy/brotli-action@v1`. Use the `args` parameter to provide Brotli command-line arguments.

### Example workflow
```yaml
name: Compress assets
on: push

jobs:
  compress:
    name: Brotli
    runs-on: ubuntu-latest
    steps:
      - name: Check out repository
        uses: actions/checkout@v2
      - name: Compress assets
        uses: Timmy/brotli-action@v1
        with:
          args: '-Z *.html *.css *.js'
      - name: Upload assets
        uses: actions/upload-artifact@v1
        with:
          name: assets
          path: .
```

## Parameters
Argument | Description
--- | ---
`args` | Brotli command-line arguments. Defaults to `--help`.
