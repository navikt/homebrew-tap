class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.23-202645-36d5b37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.23-202645-36d5b37/nav-pilot-darwin-arm64"
      sha256 "b8d063525d3724c7c543b5919110fc68baa40315cf4c11f1630644b64bfb4014"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.23-202645-36d5b37/nav-pilot-darwin-amd64"
      sha256 "bad3dada4f1421fb2d12a82638fcc30c11f8c24ddd57ff506e3572e0363376f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.23-202645-36d5b37/nav-pilot-linux-arm64"
      sha256 "e665525af31dd508a926a4acdaac6bb6912aa692909899eabb0b2d84881f2983"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.23-202645-36d5b37/nav-pilot-linux-amd64"
      sha256 "a44ccb2b09ffff8ead338b76f2170e95986a854b5d0cde6a72b9ee0c6e600c5b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
