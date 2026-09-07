class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-113059-b14b044"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-113059-b14b044/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5f7c899e3938dde55378fcd5e8a45b9404485cf18344d637846104ac5536152e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-113059-b14b044/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ebbde58b6d120ad558abd3e3f8aa64afae6f96035d3b814a7d98bfe3d99b684c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-113059-b14b044/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "397c1bcf9804a9f66b14f272b414ceb185e207ac0f9f5e99fa0e58a94f15481d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-113059-b14b044/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d31ca3c2ee747294d627f7e7e7e1ea62a7f36b087931b366c821854ff0d09046"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
