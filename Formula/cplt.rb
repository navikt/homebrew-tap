class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-060519-d39215c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-060519-d39215c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e00ec91cfc4c2056e97d1d1018e7acd246dfebece204204f6c947a47d6691dd9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-060519-d39215c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "efeb0405d50bcf00d4f7601aa94e49b35e506b38a05ec1b2d1e84cdf964fb068"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-060519-d39215c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "457b19b929b1cf55430849e29b4654e6f1a4e85a24f43a9eaae3de30c772ed93"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-060519-d39215c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ea198ca3332797a6dd4d55b70a20601a48e5e2619314b08f8c6079513aa7196"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
