class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.15-191310-6389827"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.15-191310-6389827/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "85f850d5d9d12017aeae270fc5365bca6bae188b896eb6ebcf31574eec5e5655"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.15-191310-6389827/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8d85ab74ca3bcbbb6dab2bbff85346798008f2b42f27884dd7236fb61ff16a87"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
