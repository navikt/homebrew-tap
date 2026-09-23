class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.23-100538-5b8d5a0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-100538-5b8d5a0/nav-pilot-darwin-arm64"
      sha256 "bb1848373e6da005cac591d4e5953caf63ceed5e540ce58de54d6ffb7578d155"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-100538-5b8d5a0/nav-pilot-darwin-amd64"
      sha256 "40fcf78302551c00db2d7b4f6e3633fd9202cdb1e7c2a73900a01a81592e20c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-100538-5b8d5a0/nav-pilot-linux-arm64"
      sha256 "af5706e4c7a29a0b4ac6a5520e496c5247de5a66f8c393252a36c4b862f7cbef"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-100538-5b8d5a0/nav-pilot-linux-amd64"
      sha256 "e391796d2fcc6d735f2b104f20c8ab6a7705793a3739e51ba4f39002de28948f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
