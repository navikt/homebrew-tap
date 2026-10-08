class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-081501-54ea742"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-081501-54ea742/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4ab4a23b26618ebba0f8c2d78a072451a4020b63abd4bbfc29b37f62cc806815"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-081501-54ea742/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "475a0f06bdd5dc8d31c203befe606ab72bac00176a7a5205cd2b17bf21edad2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-081501-54ea742/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b2fbc23874a19d6a35d3ec7e5ba7f981cc77ed3102a35939842a93fc89278a3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-081501-54ea742/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a6cfc7ccf65a116ce7a98750523330e64097953591a6b26f58868fbe202d5d8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
