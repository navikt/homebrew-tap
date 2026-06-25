class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.25-130009-9e81d26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-130009-9e81d26/nav-pilot-darwin-arm64"
      sha256 "eb17f6b5be3d49b447d0a5eb6a38d8e847a61a37bf0f051bd52ee14ea9189fe1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-130009-9e81d26/nav-pilot-darwin-amd64"
      sha256 "7bab252e452dc7a8c4273c327bc3d51197d3482f67062d73653713271388e728"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-130009-9e81d26/nav-pilot-linux-arm64"
      sha256 "2e1fa51de4e85fcea18e82556d47b3c1930a9a53d05cc8d64710a3fbc5bd8eb3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-130009-9e81d26/nav-pilot-linux-amd64"
      sha256 "8f105aabdcd08b82ab63ee2a3b93f032aa585117224ac8f1f810f29586852e25"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
