class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.22-104610-6e28a6c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-104610-6e28a6c/nav-pilot-darwin-arm64"
      sha256 "adf1aca3a99233417b67d6286373ae85d233b3ea73dff144a913711b4dcc6d93"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-104610-6e28a6c/nav-pilot-darwin-amd64"
      sha256 "26988ab6a8743a61bf04f0834943b0d45c80c64bc567dc21699a51142011aaef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-104610-6e28a6c/nav-pilot-linux-arm64"
      sha256 "d024ce99ed31715a55d037a1f7dacbc638d0fd8136150a1442032be29574a408"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.22-104610-6e28a6c/nav-pilot-linux-amd64"
      sha256 "53679ff1cc6acf5810fd98a79574a28f0838bf21e6f7bb4d0c729c30d3055fa4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
