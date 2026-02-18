# homebrew-tap

Homebrew tap for [trnscrb](https://github.com/ajayrmk/trnscrb).

## Install

```bash
brew tap ajayrmk/tap
brew install trnscrb
trnscrb install
```

`trnscrb install` is a guided setup that handles:

- BlackHole 2ch audio driver (captures system audio alongside mic)
- HuggingFace token for speaker diarization
- Whisper `small` model download (~500 MB, one-time)
- Claude Desktop MCP config
- Launch-at-login agent

## What is trnscrb?

trnscrb lives in your menu bar, listens for meetings, transcribes them locally with Whisper, and makes every transcript searchable from Claude Desktop via MCP.

No cloud. No subscription. Runs entirely on your Mac.

→ [Full documentation](https://github.com/ajayrmk/trnscrb)
