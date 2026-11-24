class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.24-152531-35f2818"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-152531-35f2818/nav-pilot-darwin-arm64"
      sha256 "acf141aaafa1c76be3d3c0ecbccec489b646ea7209075a5cdb06d6edb962cea3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-152531-35f2818/nav-pilot-darwin-amd64"
      sha256 "47a705fb7e393f17a231bc960a89aa803e2e0d3f1cf18401b4c2521eca364629"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-152531-35f2818/nav-pilot-linux-arm64"
      sha256 "ac542382eeda71f17075176d93e89f461a17c0767171af446f70eb9051a24ff4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-152531-35f2818/nav-pilot-linux-amd64"
      sha256 "12cec951780cea22ed7a6f12c64c487071b34f8b430af7d0822db479ea611e36"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
