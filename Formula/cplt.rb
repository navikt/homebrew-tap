class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-203527-4315570"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-203527-4315570/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c39b16cf03f5dc2b92f0bc7926dae0d8baf64c8f83106e71a678b0c970d47305"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-203527-4315570/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "258c4bc7bae80c55cc921f6a29bb5579a7de153844ce220b2584dd061abf2456"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-203527-4315570/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5dd96588d4256c11bd402b24f083ebbd4c79143b280b35c0fdfb1306598d446"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-203527-4315570/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb157e2d87562007a4f79607b7c9b4a6f9de3cf49d5959eecc882c85e5a4276c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
