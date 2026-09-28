class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-101929-235347f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-101929-235347f/nav-pilot-darwin-arm64"
      sha256 "b786380d5a73728f8b02dec918803cc43cb518e354e3ca5bd1d763fac037e3a5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-101929-235347f/nav-pilot-darwin-amd64"
      sha256 "6048c5fed85ac2f5214b18462633836db9ae8d63ad49b79448e6beaf437b7be9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-101929-235347f/nav-pilot-linux-arm64"
      sha256 "fab72d9c37989691476cb4a4394198257236a4ed77d8f8bccc0d76422cd83b60"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-101929-235347f/nav-pilot-linux-amd64"
      sha256 "3e34b3e77f405ccb1fa4412e739e9640f288751f1692b8b61661b62b247f4bbd"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
