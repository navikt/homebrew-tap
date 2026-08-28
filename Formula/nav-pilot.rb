class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.28-091813-dc3e4ff"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-091813-dc3e4ff/nav-pilot-darwin-arm64"
      sha256 "dab3b1d7e7a0c4e8ce542b953a664d4b44c426ef7a6c00391e75ac83a4435904"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-091813-dc3e4ff/nav-pilot-darwin-amd64"
      sha256 "fec7a0c01662baf3fef82ecd07896adc448bb2b648df1474608ccf9ba169153d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-091813-dc3e4ff/nav-pilot-linux-arm64"
      sha256 "cc435d49c3419dcc2742875a16ec5ae345774def48930d74a87a50e51e05daab"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.28-091813-dc3e4ff/nav-pilot-linux-amd64"
      sha256 "4be22c75be1424eb2691c00eae0a287facbd0afa95fd9249cb9c00e3071dcb72"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
