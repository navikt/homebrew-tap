class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.15-102620-ea70da8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-102620-ea70da8/nav-pilot-darwin-arm64"
      sha256 "b447f067ecab87af356466b61ad1d70e9de33c5cd6b77199755ba9fc8d708a6b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-102620-ea70da8/nav-pilot-darwin-amd64"
      sha256 "eec2c0065b84ea6f7f3b5a9e3bf8c800ce604b68ac79f1383129fb6af79ebee8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-102620-ea70da8/nav-pilot-linux-arm64"
      sha256 "37a59c653834ee8ede4f2fe52fe3562f645c6a3b4fe22585481155f0390ba199"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-102620-ea70da8/nav-pilot-linux-amd64"
      sha256 "f8f68965060587d133b7e3d5b77209029cfa7060ff5b64efbf74ce36a6a90365"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
