class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.25-084916-d5e8686"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-084916-d5e8686/nav-pilot-darwin-arm64"
      sha256 "fdb51339210d94b0970deeef524c86124d0c06711bf38cb917fc1ed53a3ed105"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-084916-d5e8686/nav-pilot-darwin-amd64"
      sha256 "ab8157ba01c5b004c27a71635a931d7c9bbdc72eda1900dc6d2bbf20222981f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-084916-d5e8686/nav-pilot-linux-arm64"
      sha256 "2236359996b4edeed8995cde35033a23ea2aa3c2eecd2226e112c4b2be675a41"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-084916-d5e8686/nav-pilot-linux-amd64"
      sha256 "5eda67226413cdd03cca1578bb2b6aa21ffa60b76852b67a4b6b5f0aea5582df"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
