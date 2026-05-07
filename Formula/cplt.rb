class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.07-112631-0d1d039"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-112631-0d1d039/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7d5d8f89186c3a951a21e72421e19db468d1e1edc476124a59ef388cab051640"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-112631-0d1d039/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ed20be01ee230b941ecff140f68a2bbdd050e71a8c2bc2b4c208ee25a4c351cd"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
