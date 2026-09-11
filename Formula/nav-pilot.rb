class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.11-090226-68204cc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-090226-68204cc/nav-pilot-darwin-arm64"
      sha256 "5347f456874df2d2a48aaf858e6b858afaeff06989875cd4b49113f4d9068b96"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-090226-68204cc/nav-pilot-darwin-amd64"
      sha256 "b5f57aa604906d668fec275596e3eff3411adf043e649385f267ee26ef262676"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-090226-68204cc/nav-pilot-linux-arm64"
      sha256 "b16ae2bc60eb730a183555ec89cccc954a535bcc01d6dfb7ec4faf08935b09df"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.11-090226-68204cc/nav-pilot-linux-amd64"
      sha256 "74fabe7f6a36c99f5d7044718ad9fe6246e20e39592f8fcd5c1030d4ceb11429"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
