class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.18-111327-0b5cf4d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-111327-0b5cf4d/nav-pilot-darwin-arm64"
      sha256 "fda164b0b3b4e80e508677783c1680f38d1df7192d4c4994e8187fe8ff91a7b5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-111327-0b5cf4d/nav-pilot-darwin-amd64"
      sha256 "3449cd053de80e6023f4bc5bf3a2e2ada7421d2449ce9ac4352cf39fe3bb0059"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-111327-0b5cf4d/nav-pilot-linux-arm64"
      sha256 "108640bda412cbbc67c79e4f5f5b9e48facfae817c575f6a0c116b0c6f438e19"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-111327-0b5cf4d/nav-pilot-linux-amd64"
      sha256 "f96fc947f0d1be96140c7377dce8eabd0797b0fa40ee3de127994d9041f462ba"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
