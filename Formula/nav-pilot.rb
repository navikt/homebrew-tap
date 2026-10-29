class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.29-131425-7eb42e1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-131425-7eb42e1/nav-pilot-darwin-arm64"
      sha256 "5ae19b32591351b6d504c089ed8121653c295bee78fb75dec0a8ea1edd4e9f58"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-131425-7eb42e1/nav-pilot-darwin-amd64"
      sha256 "d4925daf6f7d0f06479a9d4665526a19b4a10e41c2580d1579b0726336150411"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-131425-7eb42e1/nav-pilot-linux-arm64"
      sha256 "0564b1d0c1d8d67bc233f2caeaf9bd1c07de113d8e694b8a5c37af79fdec2cee"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-131425-7eb42e1/nav-pilot-linux-amd64"
      sha256 "f6a79660218063d1d4407f1214aad522f493e28eaee5c1c3815591806876d240"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
