class Trnscrb < Formula
  desc "Offline meeting transcription for macOS — auto-detects meetings, transcribes locally, saves to Claude Desktop via MCP"
  homepage "https://github.com/ajayrmk/trnscrb"
  url "https://files.pythonhosted.org/packages/source/t/trnscrb/trnscrb-0.1.2.tar.gz"
  sha256 "8ec52014ede1a6f1aecabacd33adbc350b6fc07a30359fc30c2b3dc587e90ac2"
  license "MIT"
  version "0.1.2"

  depends_on "python@3.12"

  def install
    venv = libexec
    system Formula["python@3.12"].opt_bin/"python3.12", "-m", "venv", venv
    system "#{venv}/bin/pip", "install", "--upgrade", "--no-cache-dir", "pip"
    system "#{venv}/bin/pip", "install", "--no-cache-dir", "trnscrb==#{version}"
    bin.install_symlink "#{venv}/bin/trnscrb"
  end

  def caveats
    <<~EOS
      Run the guided setup to finish installation:
        trnscrb install

      This will:
      - Install the BlackHole 2ch audio driver (system audio capture)
      - Set up your HuggingFace token for speaker diarization
      - Download the Whisper model (~500 MB, one-time)
      - Configure Claude Desktop MCP integration
      - Register a launch-at-login agent
    EOS
  end

  test do
    system "#{bin}/trnscrb", "--help"
  end
end
