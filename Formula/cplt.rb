class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.08-214547-f48005b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.08-214547-f48005b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "71efb2e86b8e9227bcfdae83c32a52da809e128250b3aa095cd974470b79bcb5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.08-214547-f48005b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fbd322a7fdd642ec5effcf9b5522712c171419a9eab041c3f8be0f3082ef317e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
