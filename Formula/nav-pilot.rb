class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.26-080716-19991eb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-080716-19991eb/nav-pilot-darwin-arm64"
      sha256 "1552b87a8d106d3eb207e4a6ed758f06928fbf1ebf0ed764aaeea59df05ca01a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-080716-19991eb/nav-pilot-darwin-amd64"
      sha256 "0e8673368d039383c396529933a87f011abc56a54538c5c649e9848eb39c821a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-080716-19991eb/nav-pilot-linux-arm64"
      sha256 "0bcdc42030f9a3716a872970d2ad411060167ae1dd90719e4e315bde9830ef53"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-080716-19991eb/nav-pilot-linux-amd64"
      sha256 "c1b0e0d48247b8d5f808b3e047e279d85989a82829ba21f606c00c8692089205"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
