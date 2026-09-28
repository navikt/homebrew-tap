class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.28-170043-218fdba"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-170043-218fdba/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a7eacbefe62b604f7d95aa54857afffbbce4a124251759f625b44feb4ff5149d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-170043-218fdba/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "38bb66916a2435bc64446cc87f8352fcb5865cfac27083a8e2019e24fbb8b898"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-170043-218fdba/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "511b80faafee00254a6a5126146af464827208835c1e8188cee67d7401258012"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-170043-218fdba/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ea37f346f9cac5a65e9e7e9d74d6030b2e77f53380a91a4b263c3562f58c60b"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
