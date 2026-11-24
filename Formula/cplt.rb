class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-180250-7158839"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-180250-7158839/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "fbe0a64248fa14774d8042853743b7ad4d0d82cc658606b19bcc3cce32939ba2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-180250-7158839/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cc10bc3755cf10b31c710ea72df419292055788e6eedb473d1c36c41f6b69f7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-180250-7158839/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "102e4177a0c73436f001cbf70c61d9de466478732ae076632abe3630521d298a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-180250-7158839/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1901a6669426dd49a051625589e4726fce08455de77d035ba7ce77342a8cda14"
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
