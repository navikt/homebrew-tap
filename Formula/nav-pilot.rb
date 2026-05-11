class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.11-162147-9823212"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.11-162147-9823212/nav-pilot-darwin-arm64"
      sha256 "2164e393559730274272aa5bbf09f07c18ce75a83a0b08fd97dad6d47ff9f10a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.11-162147-9823212/nav-pilot-darwin-amd64"
      sha256 "3792edaab25cfdd521e9f2db89c5c0996e4e5bf023f28ebd0428857342b7cdb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.11-162147-9823212/nav-pilot-linux-arm64"
      sha256 "8c838fca6747b9c8f27c4b94939dacdda7cb5f8f8bb214c404e0a1d5492a46f9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.11-162147-9823212/nav-pilot-linux-amd64"
      sha256 "ad745e72a6735ecfad2642121fb23075b0a54459dba4751f81c1f7b4cfd9f9d6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
