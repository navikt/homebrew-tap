class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-122332-79ce8f5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-122332-79ce8f5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "498907bd8d28edf92f7977afdaec8c576fc0237be4255e436d1e88418195061b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-122332-79ce8f5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7cbe91bc0344c1b8c3f5663439f901fe1e624fb0940f3e18a1ca47ae4a44d73c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-122332-79ce8f5/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4ddf6cdb27a2ccf727cef12d3e47cf0a459319a412dc513e87e032507cfa174"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-122332-79ce8f5/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "011bdd1e1c98b65938cd786cdc8e295f77c039fc4ab0b86b81acbad09d42dca2"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
