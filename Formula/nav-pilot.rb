class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-083640-6b37119"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-083640-6b37119/nav-pilot-darwin-arm64"
      sha256 "22c759687417cb29c1a739b469499935e28846bb66549c35d20196a957891d86"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-083640-6b37119/nav-pilot-darwin-amd64"
      sha256 "fcc18b0806a0527ec02799df156f004e91718baa9b1a5aac00790797296f5a53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-083640-6b37119/nav-pilot-linux-arm64"
      sha256 "85574c0073d71b981ceed6432c3c783b21cdd34b10ac258dad7697829a3271b8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-083640-6b37119/nav-pilot-linux-amd64"
      sha256 "497d493bd6c017b36429d8b7713f975a3e6700400eba9890f6781d39e04fd356"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
