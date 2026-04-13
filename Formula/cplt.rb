class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.13-3a95599"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-3a95599/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9cfdf54372f505adcfd428c58c92e6af62729c6e4c85e0462b99c83aba382ae0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-3a95599/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4106e04040cd862e5cf2c7ba349256f136ad8a18dae7406d65fd1acb3d3a8a95"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
