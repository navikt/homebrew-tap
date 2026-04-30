class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.30-085935-4e191c8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-085935-4e191c8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "52065920de796367380ffec97061deffaa5a2add581c349a3eedf0a616de1cf7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.30-085935-4e191c8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "525fc71c925aaff9cbf843bdc6089d995895449f96a787ef474d60a91d096b3c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
