class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.01-124209-4a2cef4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-124209-4a2cef4/nav-pilot-darwin-arm64"
      sha256 "16110ecb7ea8a8c82739f8c46307f3e8e6bfa8037c57f95f5867f3c01c7256fc"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-124209-4a2cef4/nav-pilot-darwin-amd64"
      sha256 "645a79058e92e202b755292ac7f58dab58d9b5eca865dda2bd3a487345e0b5fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-124209-4a2cef4/nav-pilot-linux-arm64"
      sha256 "15565c20cd32e80c93dcf4e31efcc603a04d40a943064cdf0220fabb6ba8a246"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-124209-4a2cef4/nav-pilot-linux-amd64"
      sha256 "ff620d062122892cc44571853e328da07f59f0c3f61b6de2a7b61b83c31c5ea3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
