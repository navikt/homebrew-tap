class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.15-054136-ce819af"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-054136-ce819af/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d4e6a42d75d34e8a65fbc4df5117f5dc5b9fa24dc72dc8cd9a5e64dfe953aa7c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-054136-ce819af/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2f5a9e384e7dd3bdad2745123b7b45889c65d5533a98aff2b445224ad879012b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-054136-ce819af/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cec9afb0d772d91aece7b5c0c162a1e1e0346ea7d340f3fde613613862b9e21a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.15-054136-ce819af/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3de028ee151f7fd805746967d546cbbe2a6a00d7406b8dea4416db1b9ee182ed"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
