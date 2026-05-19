class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.19-065316-c15c741"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.19-065316-c15c741/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "dbb4507dabea404359acbd9f1679962a6a41c0e6831e6712880d0d8c10068c54"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.19-065316-c15c741/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c00b0eb70023d1bf79da98e4e7aad5042894d5c28d3383efbfbe4eb14a5501fc"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
