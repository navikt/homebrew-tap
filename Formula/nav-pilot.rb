class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.07-102927-8e02d9d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-102927-8e02d9d/nav-pilot-darwin-arm64"
      sha256 "8e66cc4e05d1edf2d9693d50f3339b91c8543f08df8fa727204d7c2aaf7cac0a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-102927-8e02d9d/nav-pilot-darwin-amd64"
      sha256 "7309d7732015aa13b88cb7bc0651050a5e84ec9e807ad3cf375d649a1a0987f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-102927-8e02d9d/nav-pilot-linux-arm64"
      sha256 "260e97a0de513207c5077f74f149f0f850e4ade3d1baa36d03b999f7844da4fe"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.07-102927-8e02d9d/nav-pilot-linux-amd64"
      sha256 "9e4c103a79a0f78a26b849d4bdb5210edc949c61b1a5ef5c33a8d9b998f85363"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
