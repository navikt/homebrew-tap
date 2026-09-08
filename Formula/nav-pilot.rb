class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-175919-60c4bc6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-175919-60c4bc6/nav-pilot-darwin-arm64"
      sha256 "4bf4e0cc77da70f4b63113bd4b2a400a1a8e615b8af7d80a02fa8a2264202a31"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-175919-60c4bc6/nav-pilot-darwin-amd64"
      sha256 "0c769402d37670d8bb792b8660c394e3aa0a2290b486781bcf20900021185f0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-175919-60c4bc6/nav-pilot-linux-arm64"
      sha256 "323dfe55bb1fee8c940df55aba8a4ab50f97e025e78d024478da4c2190c1929a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-175919-60c4bc6/nav-pilot-linux-amd64"
      sha256 "2f8b7156a3a9c56a3b1415b90a0782a4ee815cfc65729476ded4edd199c136e2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
