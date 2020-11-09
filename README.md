# IntelliJ Inspector

This action runs IntelliJ inspections on your codebase.

## Parameters
| Parameter               | Type     | Default | Description                                                       |
|-------------------------|----------|---------|-------------------------------------------------------------------|
| `target`                | `string` |         | The directory to be inspected.                                    |
| `profile`               | `string` |         | The absolute path to the profile file.                            |
| `output`                | `string` |         | The absolute path to spew outputs to                              |
| `verbosity`             | `string` | v2      | The verbose level. v0 - silent, v1 - verbose, v2 - most verbose.  |
| `scope`                 | `string` |         | The inspection scope to be used. If none, all files are inspected.|
| `plugins`               | `string` |         | A comma-delimited list of plugins to be installed                 |

## Usage
```yaml
jobs:
  inspect:
    runs-on: ubuntu-latest

    steps:
    - name: Run IntelliJ
      uses: mridang/action-idea@master
      with:
        target: .
        profile: ./.idea/inspectionProfiles/Project_Default.xml
        output: ./output
        verbosity: v2
        scope: Inspection
        plugins: 1347
```

## License

The MIT License (MIT)

Copyright (c) 2020 Mridang Agarwalla
