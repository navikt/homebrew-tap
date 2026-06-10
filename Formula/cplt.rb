class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.10-132751-89649b7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.10-132751-89649b7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "01a82e404932efa16918311d23ae374b54b40a6422fa9799bd15adebba87f54c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.10-132751-89649b7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "57a980afd388eef535e396a750b7037fb2a60ab4855d1c751c7df3f2412728fa"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
