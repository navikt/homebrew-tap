class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-153046-68fe818"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-153046-68fe818/nav-pilot-darwin-arm64"
      sha256 "af8b6dbb864537b33b39a614bd6dcbf06f5d647781a6caf0af1d79a0e380f62b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-153046-68fe818/nav-pilot-darwin-amd64"
      sha256 "3d93a8dde54b66f60f02b71dd532c3caa0fc540b0c4902be62036bf802551028"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-153046-68fe818/nav-pilot-linux-arm64"
      sha256 "ecea4dfb075d0c35df229a9a60c72ff5e679acd2d17441785e7537e19fcc46f5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-153046-68fe818/nav-pilot-linux-amd64"
      sha256 "e90ddd294204fef95a72e268ad36296bd2149516487f8a91132b1c881504c995"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
