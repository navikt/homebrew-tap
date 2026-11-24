class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-140156-01b82cc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-140156-01b82cc/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e66ae8494f702651359ba521ec85c52d22c8f3ca20ca1d3623e307bdc135631b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-140156-01b82cc/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "034a9d2946660a330426f7b18ffcac1379e4cd7da575701fce32e61e5e1f6e45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-140156-01b82cc/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb04d43496fe772cbca6909869d4c61c677908267d53c325a5e5f237767e8df3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-140156-01b82cc/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e88e01706f88eb1c3c674bb86725b64a864210ed837eec8a619a987aa9a65ffe"
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
