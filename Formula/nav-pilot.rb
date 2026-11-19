class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.19-222543-3363873"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-222543-3363873/nav-pilot-darwin-arm64"
      sha256 "fceb9d5c467bc2a90c59213915dd228fe8f21e37beb50aaf3bee54585d59498d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-222543-3363873/nav-pilot-darwin-amd64"
      sha256 "b8300beb68f64a29bea804bfee0697aa970e362f739c0b0e344a1cecfc51d297"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-222543-3363873/nav-pilot-linux-arm64"
      sha256 "ac9ecfe274b47eb20ed581399ebaab811185f4b6dfdd7df06abf34d4b6a25b51"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.19-222543-3363873/nav-pilot-linux-amd64"
      sha256 "847be11d7dd95ff843ab376b05fd303536a8e09f595bf44b832a5fec7dc16e38"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
