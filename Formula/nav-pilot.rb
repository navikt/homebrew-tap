class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-065538-661d4c8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-065538-661d4c8/nav-pilot-darwin-arm64"
      sha256 "72366d6a8a3848594ec649fec4d4f9a1ba2bf78c118b8714a02ece9297fa5503"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-065538-661d4c8/nav-pilot-darwin-amd64"
      sha256 "9dc2317f2c287aa6652270324bf939df10beb127ec692077bb5013d8839964c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-065538-661d4c8/nav-pilot-linux-arm64"
      sha256 "337904bd1b6be6554912d134209b8e495d969c344d0828635966e0c17c994ac9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-065538-661d4c8/nav-pilot-linux-amd64"
      sha256 "89c6f9d42a50d5e3aabaab0d93eef17917a317b3f16bf902b9aea5a5bf8d5b37"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
