class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-095446-9d28514"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-095446-9d28514/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4b2868831181511c2decc6e3e2777454f105496f4c953e3c3a2758a234951a39"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-095446-9d28514/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6c43a58246df0ee48a31e233f935c7c291947884e17fbc5dd84d8822a1c3e634"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-095446-9d28514/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "efb7bd9e83cfb5b4bb04503466a8465ff844e8e2193d7a18c9ebb7291c087922"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-095446-9d28514/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b4d1ac3991610238b5ce96cc3cee6bee1bc4fe125500d42fdb61986e520fd52"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
