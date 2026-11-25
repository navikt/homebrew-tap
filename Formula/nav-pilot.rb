class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.25-225704-70cf648"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-225704-70cf648/nav-pilot-darwin-arm64"
      sha256 "836cab054a9e1604c6fac63e5a8b50658a3f946de9a0ad3a85599985f3105527"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-225704-70cf648/nav-pilot-darwin-amd64"
      sha256 "acbbd5addc3917e09980abbd2515c999469258c9c2301b7b1c7985a591566ad6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-225704-70cf648/nav-pilot-linux-arm64"
      sha256 "8b7ab6f22933748c3180bbe9535d48ff90b888c03a6d8f1553ce0326776fb500"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-225704-70cf648/nav-pilot-linux-amd64"
      sha256 "4e0ab891b71022a2f91cef501ba1dd5a9c22ff97c9c80ce386361aa4a30f699f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
