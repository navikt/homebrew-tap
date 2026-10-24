class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.24-152330-f50c861"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-152330-f50c861/nav-pilot-darwin-arm64"
      sha256 "b3849e26b5dbdf44022e06951239924e8a589de4c2a99b29f7ffcfde1bdb1c3e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-152330-f50c861/nav-pilot-darwin-amd64"
      sha256 "a497bdf996819f8368854ab7c3186bdf6a1b3c7d293647978045dc8ec9161898"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-152330-f50c861/nav-pilot-linux-arm64"
      sha256 "f71682519f4d29d7573911ec9d07457e54a63479ca8eb553d7aa04d8b278c63a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-152330-f50c861/nav-pilot-linux-amd64"
      sha256 "a417bca8a0e8cc29507b56500e286d47b0ca95bca33b96b7fa8017b38e4f1eb2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
