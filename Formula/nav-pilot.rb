class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.04-224557-2114270"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.04-224557-2114270/nav-pilot-darwin-arm64"
      sha256 "2162e5560c65ff29b711213a8cc9f0acb6a16992eed6f61287ac42c43f7348d7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.04-224557-2114270/nav-pilot-darwin-amd64"
      sha256 "269d2abab15c9ecf8297795975938a1b7387de012eef91b9b654f591651a72e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.04-224557-2114270/nav-pilot-linux-arm64"
      sha256 "65e4f178f777afc5ea32a49db8c27b26255c30f662516c8a04e4ec7aabd887c2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.04-224557-2114270/nav-pilot-linux-amd64"
      sha256 "d7c3d6055e001fdb1a45dc205d266948093f32db8d81c3df75e7f4f30f921e6a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
