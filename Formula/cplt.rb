class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-185909-6c8bfb4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-185909-6c8bfb4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c83766da09b4e1d0c6f35d425b03bcb9ab49dc680b8b37619e2f3528c9535013"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-185909-6c8bfb4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fc224137de50059b97d57c8a067f14fb8c7f13fcb5427d30f260e86fa17da715"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-185909-6c8bfb4/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b3ba59452f447494a73e7d5b0611473a0335ab3d015606952143ecf61fe2fe6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-185909-6c8bfb4/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "599fc2587c6cedf68d0c4934b4cae5c223a6748d49cb6cbe3cd0c850ac78c621"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
