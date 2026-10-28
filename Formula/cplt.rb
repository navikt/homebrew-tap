class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.28-193606-cc59dce"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-193606-cc59dce/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c8492258608f264b41fb8f607330a26e50d99b4880fdf169c4de4cbeb761e61a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-193606-cc59dce/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a3234121fb6c52f84d7c50d265220fb70c932aaded7b239565ce881f2f569ea0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-193606-cc59dce/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "425f9636905eaa1959dde9313fd8dc749c79992bc12305cbe458d75441f4b2e0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-193606-cc59dce/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "957fc1029d3eff43b7aecce89dc674b95975da4f9f7c3fc5c10ca27b3bfe54fc"
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
