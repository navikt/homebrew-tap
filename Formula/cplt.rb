class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.21-065856-8996c60"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.21-065856-8996c60/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9b9dd76a4ab107415c1850d139628aa311da6cb900da2cfa13c494a3e6d55407"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.21-065856-8996c60/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e6365e964afe5a856071ee443d4e5d2bb0e0e02d45aaa4b60ed2409d54662b53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.21-065856-8996c60/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f1505ad6d49e3e52dc613e9ad152c0e38005f9a412430c462bbd27dcb881c81"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.21-065856-8996c60/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5f4197fcac8ce94a85413393ad9a6375ab10dd3bd5b34184afdb9c071d07f4d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
