class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.05-155320-bb7f501"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-155320-bb7f501/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8af4619c229383c4eacc495857936ab50d50e9eb97004bb1337b54a4735323cf"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-155320-bb7f501/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0b8f305d997a559679ffd754a67fa0b126dd49740844ef3ea90ee735c4c6a813"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-155320-bb7f501/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "641f2da2421ba2c083b52d1b40b83b0fb9ebbf0b24e901a50d285dbf9a181b82"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-155320-bb7f501/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d4806c8157f48594c8607def3e128f09c3ca675d51ae805ff183a39b0cfbfc7"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
