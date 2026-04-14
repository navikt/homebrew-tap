class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.14-132306-ca61aa1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-132306-ca61aa1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "28e843d2e0f978370a2189fcae668b287e840eb111eddfee076b3442aa63d89b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-132306-ca61aa1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "625a924cc1aa44f78fa49aba07803a102e5ea7f5c8f882de0dd15ad377d5d167"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
