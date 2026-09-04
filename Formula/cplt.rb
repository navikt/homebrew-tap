class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-214823-eac7641"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-214823-eac7641/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7859ae94429d7b4f695db8f7e62c352e852ef4fc77d56a973d972203f6293b28"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-214823-eac7641/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "deac4f94690aaaac8a4c3bb9255e65880e43748f45971b80f900049227550ff6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-214823-eac7641/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cfa9f1fc21f9a42081dc8d221d056f1ba4224bd84502482c323f57f96468ca8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-214823-eac7641/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7df09a869fe9546d5a2960a73ee0138bb2577693db8f7c23232bb4c8519c4c26"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
