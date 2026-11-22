class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.22-092221-9cfbfa6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-092221-9cfbfa6/nav-pilot-darwin-arm64"
      sha256 "f427fbb3f21b0340cd5e98ed9e02a752b9edbd526048b82d58f58ffa8be8b24e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-092221-9cfbfa6/nav-pilot-darwin-amd64"
      sha256 "1311fbf502b28139686346d27cbd631b7a737cfb43cb43f86a9be441e2fcb055"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-092221-9cfbfa6/nav-pilot-linux-arm64"
      sha256 "1149e264eac865dd3507e0e39f827346450d3400603c34ccb959522f0c62d659"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-092221-9cfbfa6/nav-pilot-linux-amd64"
      sha256 "bcc5a78d6b65ff0b7c1a66fa2006c16756317630dd626cc35ca4660900fc91c0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
