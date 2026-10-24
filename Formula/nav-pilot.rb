class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.24-162618-6751263"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-162618-6751263/nav-pilot-darwin-arm64"
      sha256 "cc8287f1097401955d5e0a4bfef93271554847bdbb3854a28c4e2bd8975650c2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-162618-6751263/nav-pilot-darwin-amd64"
      sha256 "2ccbf9eed1657d96ba92dbf6801e65a26be803b27c6ed9a34067333d1d1b54f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-162618-6751263/nav-pilot-linux-arm64"
      sha256 "a5204d73b48b6341f8c7ea29a94a796299d5a14ea89c907e49383eccc3465db2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-162618-6751263/nav-pilot-linux-amd64"
      sha256 "9749090350d53b898c05beb52e01b599480af353a14005024e2dae3ec9e37df5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
