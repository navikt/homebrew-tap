class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.10-836e752"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-836e752/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9a7d1d9b8b00efbf38463f9575aa707924d0070b0fe4c78cbef5787fc17c251e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.10-836e752/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fbca355cdd1c8a8387a1c81d94293823979e2bbf8d16a049a7e3f91f920f6301"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
