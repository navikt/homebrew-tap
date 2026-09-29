class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-064855-2ccc7b5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-064855-2ccc7b5/nav-pilot-darwin-arm64"
      sha256 "ad2e93e489f803fb52e54c9ef3229cd9b2bc4ce9e1ff7438a235c905642939d0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-064855-2ccc7b5/nav-pilot-darwin-amd64"
      sha256 "282dcc36f1fd7b0eef779768de1524d185bffb0774ef3bb2c798db3217858d8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-064855-2ccc7b5/nav-pilot-linux-arm64"
      sha256 "68e3dc0f2365d38663a9024b9e923c4ebe29130aabdcc58de1bcfa3b3a83bdeb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-064855-2ccc7b5/nav-pilot-linux-amd64"
      sha256 "55b8b94d76fe82f9b526753c01d1401fcd53450e595db9530834e4e4e6062ec8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
