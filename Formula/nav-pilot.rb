class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-183130-553574c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-183130-553574c/nav-pilot-darwin-arm64"
      sha256 "5488373ca0eb8f00a36b2d5f08baa7b36c74f84551a5883bccb9963621470617"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-183130-553574c/nav-pilot-darwin-amd64"
      sha256 "5c3e0a16e0878c90d898169b511b7f35c38b3c4c0249047c8e2d82bb1f12fe18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-183130-553574c/nav-pilot-linux-arm64"
      sha256 "1bd9753336b7c90f136925d51be859ea16bdca13e284f4a350663c27cb9295e8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-183130-553574c/nav-pilot-linux-amd64"
      sha256 "829f38be16294fd7d0a56ba757a481c789296c2fee16aa878ae1476e490a8dfe"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
