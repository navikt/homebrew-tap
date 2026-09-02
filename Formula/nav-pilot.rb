class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.02-231439-d330e9b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-231439-d330e9b/nav-pilot-darwin-arm64"
      sha256 "e6a2d70a4b226b193dc4ba4672cc2c42c8c21536cf8c88b8d20068c174dcb526"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-231439-d330e9b/nav-pilot-darwin-amd64"
      sha256 "9d54ad7f91d50b1bc36e8285243c7557934aa9d92ec5e067f09722ad0adf784b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-231439-d330e9b/nav-pilot-linux-arm64"
      sha256 "d6adaddde9c85afaa2e9b31f8e3d8d85d2cdf53aa68df3cadf46a577d37b065e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-231439-d330e9b/nav-pilot-linux-amd64"
      sha256 "0ad7a6eaa31afe29a3dbfe2c39e71aec4e54e308079c4af3c59a866e68816b35"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
