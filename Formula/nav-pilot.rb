class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.25-222412-b0215e7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-222412-b0215e7/nav-pilot-darwin-arm64"
      sha256 "10a7f24595ed4245d0134da629775d3146059953ef3a414c091938577c290c2f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-222412-b0215e7/nav-pilot-darwin-amd64"
      sha256 "6230f183f51cb3ea92ba01f2f14674a80392d1394e9b9797ecfd265120dc0e8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-222412-b0215e7/nav-pilot-linux-arm64"
      sha256 "be760d9d5e7aac629408582cf59096b4121957ed5ed4188de0b434b49c3aa389"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-222412-b0215e7/nav-pilot-linux-amd64"
      sha256 "ba8821c0177e050b2ecf9cb73ca944005a01bd63cb24a91e58ee1d5f400569c6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
