class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.13-191347-ac32208"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-191347-ac32208/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2c131baf7471b9985af727204374da327082080d423429273f3cf90f025bc744"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-191347-ac32208/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b5441eb40cba4cb8e37a3f50889aeb953bafbaf5551794b6d922540e712234f6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
