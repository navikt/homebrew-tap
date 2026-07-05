class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.05-123439-315f007"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-123439-315f007/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b52dcf62d11c68468f065a7f83795ceccd4015e8b33cec7cb6937e52361f2fb0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-123439-315f007/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cdf685bd2f4fb0b33ea738e69eb636d902dafc9dd87805be312d29dd3e2b5c71"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
