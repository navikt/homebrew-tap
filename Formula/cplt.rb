class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.24-164900-53d4462"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-164900-53d4462/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8a2d2d9a8b43fcb280835dcabd980c321b54f28bd4e5a5dc4123868b4f7a2d19"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-164900-53d4462/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8346d429012bf9ae50ec55d179ba14311d397404a36c7fd8e454110f47bc98b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-164900-53d4462/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aca2670386c0f0edc5e925a5c26d8c205dddeee419531fa6f5bbf92cfd2ce18b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-164900-53d4462/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5323134533ee907e952876be7a0c121e7d4a206b4ab4ad26076be8590f0fa609"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
