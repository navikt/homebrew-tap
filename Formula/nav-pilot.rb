class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-214925-f431a28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-214925-f431a28/nav-pilot-darwin-arm64"
      sha256 "e28fe9e18fad19391622966a7f856a24d348ebc836f8525078196c95eaf2bcbe"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-214925-f431a28/nav-pilot-darwin-amd64"
      sha256 "5a978d675b89a23d605626682a58d4d44a063e31d6158febd1ee3eeae0424da8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-214925-f431a28/nav-pilot-linux-arm64"
      sha256 "c8a4d124289a1a7b233eba89f510f0c9274cc7ab2ae627600aa59d3233352771"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-214925-f431a28/nav-pilot-linux-amd64"
      sha256 "399653da1aa33aa7ea9dc2e548f342fd872f797d963d976e64bf1c8be980b9b4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
