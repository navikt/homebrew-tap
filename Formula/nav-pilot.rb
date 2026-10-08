class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-112537-8f0da99"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-112537-8f0da99/nav-pilot-darwin-arm64"
      sha256 "cee8b16b4c2ffdd07c405a46fc29206e4ccc3e03f6c1c6e80711eb2f75e10982"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-112537-8f0da99/nav-pilot-darwin-amd64"
      sha256 "dd4b0521c59e85cbd49703a0be71b07ba80547161e741c9c2ce943f6954e3b9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-112537-8f0da99/nav-pilot-linux-arm64"
      sha256 "2de45ba404b75eb96b519bb137484e57c058943b88f76c17bb92a93e4ddc9ed8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-112537-8f0da99/nav-pilot-linux-amd64"
      sha256 "f4516332038bd1e429fc71525b62bc5c7afe82a87d3b20192b0d097652ccf8dc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
