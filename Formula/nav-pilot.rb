class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.10-204952-96c8347"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-204952-96c8347/nav-pilot-darwin-arm64"
      sha256 "35e39d633f5dc868864900f3759cf87bed68cd91e2b5a9e5e977657a4208d7ce"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-204952-96c8347/nav-pilot-darwin-amd64"
      sha256 "d042583bc2f9a563ab78cd1a06a16d59c26e138e3ef8da2b023340ab2b408630"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-204952-96c8347/nav-pilot-linux-arm64"
      sha256 "f5d6c957af35ac20f5e336ea94a813da5670fc1ab603ede0e12cba7fc4e42ea4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.10-204952-96c8347/nav-pilot-linux-amd64"
      sha256 "a83f49444e31a1421c5ad98f6ca40658ca85c177d93027781a0f712e429d6e38"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
