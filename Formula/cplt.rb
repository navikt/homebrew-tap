class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-104655-898d445"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-104655-898d445/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b1e8b24ff3ca76866481b14a1847b74d2588e96271cdff3557acb3f91297a55d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-104655-898d445/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e0d43e1ff343f5a9f7950d6ab19660fbefc07dca91247c7274314057e47d0c4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-104655-898d445/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6034389fce8d1c6ae51adb2ffc51a207d7822ed56b1d647a0160ce16195bb331"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-104655-898d445/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad74b298a2d074f243ed4f2a23d073688c82388f09f44d80df37a5459c82d8d9"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
