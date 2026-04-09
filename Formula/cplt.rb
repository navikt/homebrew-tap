class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.09-83efebc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.09-83efebc/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "cd36ffc318029aca9ca09a1e4aadca86ae947a0fb74bb125161a84e38f2d8a8e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.09-83efebc/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "edc9264af7927573dfdf1049a46daa99ec7d100a478e26b7fb6c3bdf1bb337fe"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
