class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-063519-6c95fe8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-063519-6c95fe8/nav-pilot-darwin-arm64"
      sha256 "d8bc625605e44a9e738470725a5f573906a582938409ccda525b9cb0b5ea9a1c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-063519-6c95fe8/nav-pilot-darwin-amd64"
      sha256 "d5aa2fafea5c395af7ac6009bbf02ee8255de941749a5dc5b879227e71ffa75f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-063519-6c95fe8/nav-pilot-linux-arm64"
      sha256 "04118e29e1f293fc09556eabdf9a39654c04287681de949208e19ea21dfc8cdd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-063519-6c95fe8/nav-pilot-linux-amd64"
      sha256 "6e088646795fbc3fef1bb25c55327da2bef497b9cce22291ff49ad58491e17b0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
