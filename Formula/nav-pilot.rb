class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.07-130124-9e69c66"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-130124-9e69c66/nav-pilot-darwin-arm64"
      sha256 "aa573884c37ccc9a6e19ce82419c447832f1d5cf79aba832e48f1afc449678a9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-130124-9e69c66/nav-pilot-darwin-amd64"
      sha256 "36f1138125f863c75d2a497897950bed1fc0c535f7053d2fe928734940040705"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-130124-9e69c66/nav-pilot-linux-arm64"
      sha256 "71e4467909d630843d8ea34f0dde33686c9fd57e04177e7abe595b06329397d0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-130124-9e69c66/nav-pilot-linux-amd64"
      sha256 "17edb8a06dddea8ce74ec273c08a0ac4c04ecfcae4a5df32de0d362c1723608f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
