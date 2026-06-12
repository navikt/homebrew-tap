class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.12-053529-804cf6d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-053529-804cf6d/nav-pilot-darwin-arm64"
      sha256 "3b5787a6f974cfb1b28f9981902a46748723acf358baf288ebdaacf52bd7097f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-053529-804cf6d/nav-pilot-darwin-amd64"
      sha256 "c501dece6c962a9e0719be9ff0b97a93fcc90487141377e42f448f95662d1d10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-053529-804cf6d/nav-pilot-linux-arm64"
      sha256 "014afaedf23b1b547f2f007791201fb170c1c45f3a4cb1bc5f976cf64745a32b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-053529-804cf6d/nav-pilot-linux-amd64"
      sha256 "e46f88c3f5a08744de7fc353b6c3f4d1d5c606e2afc526ec7a191fc194ddcd8a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
