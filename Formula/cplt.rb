class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-214351-f562118"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-214351-f562118/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7fd02b15512aefa04be29b7367292e3b291ff07c75d85064592219e064dd8a5c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-214351-f562118/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4c0c6995e0ca0b17e9217c74ec8b1cc9c47eb0ecadf1aa5b8c1b8eb1f69ef9c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-214351-f562118/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95f76df4ab306fc0201717ab23d71fee9b6ddf97c85dd8a1a45294719cfcb737"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-214351-f562118/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19e78fcc562394c70d37bd048eee261d4ae78c0b08d68d659f31aec4368e1345"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
