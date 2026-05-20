class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.20-195149-bc5391c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-195149-bc5391c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2af7fb45c2746dea621195a37cb77e61ba5c89739dcc06652469a168f365774e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-195149-bc5391c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b47f411aaea6d2e386661596c7209b8babbb18bd6bb195d032b0d37eaa0f3e33"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
