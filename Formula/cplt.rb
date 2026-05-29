class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.29-080804-8df4c44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.29-080804-8df4c44/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a7162e9a05733b0131b82a04340770e1d6a4416db7155320a76efda224eec411"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.29-080804-8df4c44/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ddacad2c4cabe3838f8441af8dadb9f36bf7835e71f7d3f06b131784ff47ea00"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
