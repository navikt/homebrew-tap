class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.07-123313-5326be8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-123313-5326be8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8ae44afaafe9aebbe04368f109c8fcd2473bd51074672ded36edbaf53b0a3d61"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-123313-5326be8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3fdc247c0025248ae310013769d3efa37a5b282fc1eb3fed2dc0eeaf8f37e817"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-123313-5326be8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18fe5ec22aa28f765ab160a17b142505aba9bed7950710941c5d8d6240120b9b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-123313-5326be8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e13319932adb663f0c747d111ab877533d538a76380050042dfd91b54d9fcd0"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
