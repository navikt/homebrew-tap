class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-174031-b8e0dcf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-174031-b8e0dcf/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "61109538d6bdda070fb9167d1f1f156885b102a612735344a4b9206d32fe0c89"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-174031-b8e0dcf/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b5fc984df73cbf70ec73fec2ac18f491095213649f3b053a474251970a37ec05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-174031-b8e0dcf/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "609d2deb3715075b61868b6790e77927f55771dcc682957af6d3fd62b7ff3517"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-174031-b8e0dcf/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a76863d4beb9a41a137dbb9b0e72f6a2a60e6a9586b085af90441459c9bae9c"
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
