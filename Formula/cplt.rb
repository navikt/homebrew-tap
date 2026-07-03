class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.03-205915-2798b06"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.03-205915-2798b06/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c541409ad142e4b21ff2358eb77d0ae8bc0dc0aa80a16e5beccbf269d6a73a4e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.03-205915-2798b06/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0e14869c057d3fc969e99d6ee4eb6c9060061961fbc37b92dc11a3bce4894792"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
