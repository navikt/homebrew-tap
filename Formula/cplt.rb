class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.16-133226-a0e75fb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.16-133226-a0e75fb/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "80b68b7c98f3b9eded8a4d6d39b114b793bf87bd9ba4dfb0d4c326c6b4a73708"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.16-133226-a0e75fb/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e2d7c45eb71526bb9c13ae2deba9ef285fa1d9e91a4a201e5c9d8adbe5f61654"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
