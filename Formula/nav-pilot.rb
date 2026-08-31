class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-214438-39bc268"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-214438-39bc268/nav-pilot-darwin-arm64"
      sha256 "1094a04b7f1a3b6e1674fb469cb5615fc69a2987d93f1e6f1f3f5597db563ab0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-214438-39bc268/nav-pilot-darwin-amd64"
      sha256 "2b68c56b16079f32f0ca501f8f0586ab52f216d3fadd611f183e07685c91da35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-214438-39bc268/nav-pilot-linux-arm64"
      sha256 "6b49e69bd15164b3d00694c85da0462da7cd1f1558dc028a4c14ee7d92989e14"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-214438-39bc268/nav-pilot-linux-amd64"
      sha256 "90ce4b93bc92d3727b0cf189d74226384370ae95a3a5339281ae523b15087c0c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
