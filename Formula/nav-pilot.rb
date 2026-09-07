class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-074612-5c0c44d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-074612-5c0c44d/nav-pilot-darwin-arm64"
      sha256 "3114010c8a741e85c246a1640b9c6b10ef4232ffe48e416991d791e057b2c518"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-074612-5c0c44d/nav-pilot-darwin-amd64"
      sha256 "0d84e3da432c27dd354ef7ee3cad26df3306049e09376d2f01e27d74eab037a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-074612-5c0c44d/nav-pilot-linux-arm64"
      sha256 "0ce5834afcaa763de3b4841e36a5b0d486818aaae3e6f6f329b2d303b1fcc5f6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-074612-5c0c44d/nav-pilot-linux-amd64"
      sha256 "f42d9038c0dd38756496f38c12c878385f5f46e8eca8b24d0ec23d5759ffb88e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
