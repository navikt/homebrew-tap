class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.06-145856-7f3a421"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-145856-7f3a421/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a05d0040fe55a5d602a4c76b82e4376e68da04918d68fe55c40091375dc93c19"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-145856-7f3a421/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6c45bc17a79d7e94db0a44b6061ea6416ccb40cac9d372fbe9f7c20393bf828a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-145856-7f3a421/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6760560714cb5433c2f4e43217bdb5196594b11d9da5beda2d3081c33da24e4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.06-145856-7f3a421/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33ba1b205e140e411b9c6eb87d067b50aa0c35f89aba065817960f64724e2f4a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
