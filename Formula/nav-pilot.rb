class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-123459-010d883"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-123459-010d883/nav-pilot-darwin-arm64"
      sha256 "525f999606364f427ee03c322161b030a8b7b29b8ea8248913d14a9d15a25263"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-123459-010d883/nav-pilot-darwin-amd64"
      sha256 "6ae434a51faef66a0f81b4b18263f3c251725e1814f1f102208aa49304f939dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-123459-010d883/nav-pilot-linux-arm64"
      sha256 "c3b8fbef5717e8d730f45e9aa0b7d77da4aff6ed84c6b16a7ccddf66d57cba72"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-123459-010d883/nav-pilot-linux-amd64"
      sha256 "5c4d9d38528e1dbb06f50aa42f47f2f21a3513f4508683fc85ed0d9be5d48dde"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
