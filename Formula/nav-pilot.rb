class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-162918-2dce3fe"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-162918-2dce3fe/nav-pilot-darwin-arm64"
      sha256 "3865b0720447ad264d078d257fb396f335587256ea85ca091280e9294f1b2a2d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-162918-2dce3fe/nav-pilot-darwin-amd64"
      sha256 "b7a1b339ae03b75493337badb12bc1ab2bde8614a0c5db3fc979ebd6c10f9376"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-162918-2dce3fe/nav-pilot-linux-arm64"
      sha256 "68c6f29dbe811651a128ddf074b8e5830d89cb63726a22895ff1bd2d32c81018"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-162918-2dce3fe/nav-pilot-linux-amd64"
      sha256 "8788dec9ac21c27e698b6e802d0ed09c758c0818df12c3907a297e93aa688fbc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
