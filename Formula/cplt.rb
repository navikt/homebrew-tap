class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.05-223543-2a24432"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-223543-2a24432/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5a2494fde9db9507ee44c3257ba9ca7020057412125f7b697cf1dd8e85fa6139"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-223543-2a24432/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "efc4dd34143b690634e2f3792c1af0f33cf705225d7105d3a9690a51b3fa56a9"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
