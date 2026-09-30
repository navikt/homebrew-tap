class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-113545-f9d4313"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-113545-f9d4313/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9114e93caf9d7728977c23c9d308dea09bb303212a08fe1c842c5f6f965ab44c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-113545-f9d4313/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d57470b41ad4fdbc9a8ef8efa6e3efd5334bb3a61914fc12bdd272c45ff3efc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-113545-f9d4313/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a3ae30db09110a94f85c226e33bfc4f224c775b75ce97175779815c904ddd2f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-113545-f9d4313/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "397f764ad453259e21ca82e96274cd33963ac8da5cda1167387a22928820b3f1"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
