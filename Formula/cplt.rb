class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-185728-1198f7b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-185728-1198f7b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4654d6aea5738eb02d78179f3d41b5bfb3cea098ed082b06e5d50558ce480e5a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-185728-1198f7b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7b404ae86b7ef85a530fd099a4e12a2a408eeff9d1f5c8d889fded48d74213db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-185728-1198f7b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b7e71e6c4bc2a02c3d95f97b77a7c9df73118e95da9b24133f41b9b07378dff"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-185728-1198f7b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92fcd94920d948305c0bc1ca86d0715c0f734540a91b86f035b5d2576566f851"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
