class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-082835-6e9414b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-082835-6e9414b/nav-pilot-darwin-arm64"
      sha256 "1cfb47060ed159dfaad895545fbaf77adb70725387b83055541ed98444af50e6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-082835-6e9414b/nav-pilot-darwin-amd64"
      sha256 "79131a588bedfd60ec823f45d644b3cac8d15672560555050431aa3253ce1c3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-082835-6e9414b/nav-pilot-linux-arm64"
      sha256 "485c005c480818131e998f0fe8845480081e56ee84f43a6ff4445b23b7f53379"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-082835-6e9414b/nav-pilot-linux-amd64"
      sha256 "04a091d1e4aa4bc7679099d53129809ab842fc412f93ff6d21fc17d9153d59a0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
