class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.10-5b60ad3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-5b60ad3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5363d6821ba71b8085b682e1cd67eeb85290f1f51fc23637bd2d822417c9d56c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-5b60ad3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "266e9d6566a9e8ff8bcd2915cbcf73e989728cf1f772c7fb374a1c9af9eca772"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
