class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.08-072555-0657b77"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-072555-0657b77/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "aef70e1e6cbfee0772c5e1a9131f04b5a939a597cad4b788283a901fda0b57ce"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-072555-0657b77/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9e6898e5292b690f9fa02d48759b5c6a20ae3e75c694fedc0e9498f211c2131a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
