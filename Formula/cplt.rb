class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-132931-5b511d2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-132931-5b511d2/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6dd8aa66cbdbb4cf6ca7bd81029451107e631961daaca2e2bc8c7d6f30192d50"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-132931-5b511d2/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ebf9ffd510dfde44f6c058cba077cd3f5a7af672e9d205654d48e5aa687d82a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-132931-5b511d2/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4287170bba180801a6592e96c7148248935fb129d04a24da1fa0ee4288a029b9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-132931-5b511d2/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33cf188c46b1d5fcd24ad31604b1e1a7cdce7f0916c29eb59b97eed2a228c468"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
