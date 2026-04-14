class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.14-104617-b55cd66"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-104617-b55cd66/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2e438a6e6baf37b3b97caf534fe2ec923a4664699c439aa206b7e84feff3d211"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-104617-b55cd66/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "79b05c2eeb38dccf040eca83fc7235ed8c45623863dcf7688793e650a4844718"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
