class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.30-102505-1099e76"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-102505-1099e76/nav-pilot-darwin-arm64"
      sha256 "0176a9165f3bcaaea3254ccaf2eb233aa13d376cecad3ca67617fda72277edf0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-102505-1099e76/nav-pilot-darwin-amd64"
      sha256 "330dc64f338fceb5cb9babc4cc3e2b6add6cbd9fc7e45b9512231ee9e44984f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-102505-1099e76/nav-pilot-linux-arm64"
      sha256 "24bf39cfbc496302b96be7af3d9fb120725ada200e9f74f7045b8df3f841402b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-102505-1099e76/nav-pilot-linux-amd64"
      sha256 "e9dc81102e92b400efaf25aa4744dab3e7812315941239085f1ad9003b1093af"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
