class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.10-322580d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-322580d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c1a2c33dadc2dfb9d34e502a5d5e655eaf57fa0d31849f63665a3416cc588e73"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-322580d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "50324c9371bb952ec3812bbc02de8cfce551ba1c5ca0696b43d0f397dd80e8a5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
