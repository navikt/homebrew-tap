class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.21-232630-a87e21d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-232630-a87e21d/nav-pilot-darwin-arm64"
      sha256 "459dc7fa8544d2b052d1cc288abc6c090fef42da8a540b4f1230f0e36d224dd4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-232630-a87e21d/nav-pilot-darwin-amd64"
      sha256 "318faa41282d0b26f18218697a9fd8708c8415f11233347877d250f09d560078"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-232630-a87e21d/nav-pilot-linux-arm64"
      sha256 "1aa3fe20c82f1f545ec52b9d18c578b6cb4f3c29bd3377ee4a5b2005a8ab3e48"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-232630-a87e21d/nav-pilot-linux-amd64"
      sha256 "0a75d60eaeb629296443d91564abf53cebaeb3b3754f780c99fa5add036aef34"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
