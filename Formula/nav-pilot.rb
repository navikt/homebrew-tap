class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.09-191526-66de7b9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191526-66de7b9/nav-pilot-darwin-arm64"
      sha256 "df871e10ab0d0f3ce1eaa5f2766cafc20683620b6404a3062a530d466a8cf378"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191526-66de7b9/nav-pilot-darwin-amd64"
      sha256 "43b9ed235b1d6a0b3d9b1d0b3ac0c759de6b52cd3e64ec3f5951d29aabe6b97d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191526-66de7b9/nav-pilot-linux-arm64"
      sha256 "0e5364055e186333defe89517de4f4a1982d8c646c7a70026b5ff8a3980a0ad6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-191526-66de7b9/nav-pilot-linux-amd64"
      sha256 "383ff92a94c24487f9deeb1a72e24e46ce0408fb09f7197c97cecd8a55dabe3f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
