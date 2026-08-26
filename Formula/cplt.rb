class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.24-153138-0d1d66d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.24-153138-0d1d66d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "64e3d13ce5dbe88621d2f7079196b6ccc36f9968628c8a2a4ca41357a6b3a8cd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.24-153138-0d1d66d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1615dc85826109675ec024220f9633a93658497c369ed835b8faf8b1ee263487"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.24-153138-0d1d66d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "373a2f35066dc9bfd3d69e80c9b3bcbbc017c97a75eb12b1cd7168ebcbe239eb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.24-153138-0d1d66d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52bf7b3954b5e31887c13edeb948c15f223dcbdf7c34aec847f7695d94a19a71"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
