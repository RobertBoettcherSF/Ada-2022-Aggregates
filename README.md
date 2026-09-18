# Aggregates in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **aggregates**: positional arrays,
iterated component associations, record delta aggregates, and container
aggregates. For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Array aggregate | `[1.0, 2.0, 3.0]` |
| Iterated array aggregate | `Scale` |
| Delta aggregate | `With_Red` (`with delta`) |
| Container aggregate | `Int_Vectors` from `[...]` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 2).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
