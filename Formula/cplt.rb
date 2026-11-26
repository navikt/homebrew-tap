class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-130804-de4813c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-130804-de4813c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "780e8af9a24755d0ebde17ee5d1a17c958ae128ea6151a00ee780c9e9f2ba378"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-130804-de4813c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fe672c2237a1812ee99cb1fcc4d1095c43670b110e143b6e0dffb14271f377f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-130804-de4813c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3bf30898c1733b928b6b1c648bfe231708bb5e68b25093691db799b86868bc87"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-130804-de4813c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5d2827e36d8aaf44ed0fa9b17f62fe39d40ed8cb30b8d0540e7971a2ae68cd3"
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
