class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-141729-cf69b2c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-141729-cf69b2c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3da313e15d9a8a6859460f8990dbc47a7bdaa246de8653f7cede5119805a43e5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-141729-cf69b2c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5da30a9c608d06949d997f3d8fb49ddd4de43bd219f615da0b3ab911e25a7dd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-141729-cf69b2c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c29eec4ea796c8a0d18bb95204aa54774511ee1ba6ed38954560445c39a07a9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-141729-cf69b2c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21257ec87b2b49afbf52e74fbe6698a3863a93c5176f26896aab5e044052fdd9"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
