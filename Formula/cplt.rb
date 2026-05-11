class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.11-194921-486f1b5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-194921-486f1b5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "319cda95903f40d6effb165161e92dcf8fb80d3c1910dedec224a1cdaed5a25f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-194921-486f1b5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "06d0c111dc937b0b3f1daf550b9d5b8bef0ebfe6896a5b13132c3b34f1209c65"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
