class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.26-102920-1df41b5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-102920-1df41b5/nav-pilot-darwin-arm64"
      sha256 "5ed2833fe4248a4ab45c4e1b06f0a401cde2cac6c196d91a08a41da9a36f34bd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-102920-1df41b5/nav-pilot-darwin-amd64"
      sha256 "716f8ec7a5dc6c73ed5fd3234385078b5aef5fd320a3c649817dde076664b54c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-102920-1df41b5/nav-pilot-linux-arm64"
      sha256 "85fab94366d81944dc8d0b67905c93b3090c4ae663a8fa5219006bcfe8db32d6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-102920-1df41b5/nav-pilot-linux-amd64"
      sha256 "2f67ab32f2b3288d98829979eac47f7a9d40966e08fda011eca2bd79a17bd566"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
