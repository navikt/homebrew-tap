class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.05-075802-d7bc40d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-075802-d7bc40d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4e213966a0ea317b618cfb65c4a5bec5f424ee6c784fc72dceca4e1f503aac44"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-075802-d7bc40d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c674dc6290bf22b89b2670ca2e1bce0bed348e2732f47556760271dc3c5932f4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
