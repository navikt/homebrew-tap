class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.24-172607-3910d46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-172607-3910d46/nav-pilot-darwin-arm64"
      sha256 "c01b36f48e5d9710b50b96c7b725ec5d7b1a6f8d3b5f4fdad02ccaea6a8b0b0c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-172607-3910d46/nav-pilot-darwin-amd64"
      sha256 "b05f64fb5f0534b406e60021b833e0859ea5c629cb57abbf6deb55dc31618c61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-172607-3910d46/nav-pilot-linux-arm64"
      sha256 "4e937286f525634eda60a74c5fa0462bf267a6b9820f280e45a6570d3ed508bf"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-172607-3910d46/nav-pilot-linux-amd64"
      sha256 "08316dac19fa85980865b84c5c03eb446e9543584cbeb48831d9f767d3b5c892"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
