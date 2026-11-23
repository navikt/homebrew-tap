class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-171433-f4fdef9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-171433-f4fdef9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "157e9ad51772fe0f99d0de67e8881e52c99d87f0ee2c6ee751f4bc25fa530ce6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-171433-f4fdef9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ebd8471a47dde19e880532a6565a84df1b3652d8547e102e2de474a36a332012"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-171433-f4fdef9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb8035d47abf672b7d478eee82bb7a460feb19f616925a09419a174b0a7972cf"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-171433-f4fdef9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd0c98b317d623445fb99de427c48466c590928e0a8ae2be2662b8f654390ad2"
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
