class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.22-195241-405b503"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-195241-405b503/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d7cb45ce388a4233c2bbbfe74df0b4734b3a7bdf2d57a9bcb9c47768d364cc76"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-195241-405b503/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c3f8d903cb3777fce2f86f94c99cda34dc1ff906f0d4e9e9499c29399af0af6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-195241-405b503/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95f84be310fd5f35437a51c11bea8156c9d632cbecc24aadbbe1cafbbffc3629"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-195241-405b503/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "453a669990f4fe4386ed0c6c2dbdd0d2b513cc335eb73d3755a0b888ebedb3d3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
