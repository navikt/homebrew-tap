class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.15-090158-4a34b6e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-090158-4a34b6e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "fca5e9848f019af6c5a36cd8a5af7bd4be3d80186cde132fdcf3b44dd3a75741"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-090158-4a34b6e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "29de1efadd29e64224c33add96cffa1f26973efba3ac3919102b3508e913020d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-090158-4a34b6e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bbb9659f9abe2d2933d7f8a6008174237ed13b5172bb4b5b4fad5b5a46f98e0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-090158-4a34b6e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97c769ae775a3e8bf4b48d87ab676f076868f5d3cd30df452dcd27fd5805ecff"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
