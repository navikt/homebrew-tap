class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-094704-7236795"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-094704-7236795/nav-pilot-darwin-arm64"
      sha256 "100a684a69abffbfb01f31a19b8ae8be617e884f1d2862529f09c75a62d5aaca"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-094704-7236795/nav-pilot-darwin-amd64"
      sha256 "7baec45874aeb01363c5b9e54aeb71ffe58730cd1e25ce232c875daf4775498c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-094704-7236795/nav-pilot-linux-arm64"
      sha256 "58027f77aae226cb83a15c43bf7167cb6538e05c8cd97f19ba75da1d8d7ef80f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-094704-7236795/nav-pilot-linux-amd64"
      sha256 "c072d7a2da52f8304d9756e17300f04a48125ca091a6fb6d268499d40ffe0b3d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
