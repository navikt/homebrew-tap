class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-071248-161c849"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-071248-161c849/nav-pilot-darwin-arm64"
      sha256 "6088dda2ecfc5d0451564d848399ef1a3e7786be77659630782dc11cbad76632"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-071248-161c849/nav-pilot-darwin-amd64"
      sha256 "f6aac0ce6c7381ed8ed89108c3d9551f80799dc363b28e29d98e6e82213ab241"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-071248-161c849/nav-pilot-linux-arm64"
      sha256 "c6f49c28445e2f98c2411f1250b9983d944144a02543c45b5c6345d94370fece"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-071248-161c849/nav-pilot-linux-amd64"
      sha256 "6c77b326ae514884418a90e9aeaca2934e0d6618a8fdb577128386bf38237b3b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
