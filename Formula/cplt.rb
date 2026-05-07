class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.07-130503-5118587"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-130503-5118587/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f2f888a79fc42ae4680cc394e4e63daab1e02dbb6406c9783eefc5d2cd242968"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-130503-5118587/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4063998a49508e5072194d22f799a0187419bd0f9b538aa81b5ce711296c0442"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
