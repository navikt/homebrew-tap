class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.17-173516-00bad72"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.17-173516-00bad72/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0cfa4d458794d90dbe3bfc0358ae0c20993a916b42113c3fa891e743e8b92849"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.17-173516-00bad72/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cec5fb83db1fe0e94e81736fef73a53fbce772ce925cedcc578a264d7d918620"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
