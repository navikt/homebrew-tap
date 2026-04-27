class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.27-071627-3e52966"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.27-071627-3e52966/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7ae1f68c0a7bf070364ece9b52815752dde7c616afb276b0061e65d7def4db02"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.27-071627-3e52966/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "54222139aefcaca517103cb39309afaafd18443f2cf6a147029608786ff5bcf4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
