# homebrew-tap

Homebrew tap for [teknikqa](https://github.com/teknikqa)'s apps.

```bash
brew tap teknikqa/tap
brew trust teknikqa/tap
brew install <app>
```

Recent Homebrew versions refuse to load casks from a tap until you trust it, hence `brew trust`.

| App | Install |
| --- | --- |
| [upkeep](https://github.com/teknikqa/upkeep) | `brew install teknikqa/tap/upkeep` |
| [CodeAgent Meter](https://github.com/teknikqa/codeagent-meter) | `brew install --cask teknikqa/tap/codeagent-meter` |

Casks are published automatically by each app's release workflow.
