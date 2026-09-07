class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-181419-8d7def1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-181419-8d7def1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "501892e7fd4ed44ba4891a8e40b88e8a1f8bacf30fda7683ea58a38349cb653f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-181419-8d7def1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "60424037639aa365634a36c716947e5bc23861f3ccf3d2b756aa0608826bb0f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-181419-8d7def1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f83a3fa80dd796fd4ec4b2e198699ab246952c62896ae1abb67e3e33d3f81a6f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-181419-8d7def1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "331c416fbd8e7971677be91bf2531747492f074f4baa5226d238f0925720d291"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
