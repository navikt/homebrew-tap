class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.09-173010-f9cd8c3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-173010-f9cd8c3/nav-pilot-darwin-arm64"
      sha256 "b313ad734293283c6d181bc127b0146651238925c5e0afe260da07d260bbb04b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-173010-f9cd8c3/nav-pilot-darwin-amd64"
      sha256 "775c93851c7803ce924af99422b798fb0f9fde9071ad5c1882f57f54421edcf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-173010-f9cd8c3/nav-pilot-linux-arm64"
      sha256 "cba59668c27904929ee05814b35c7dee7844b2b011cbd2ca71dc678b8980dc71"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-173010-f9cd8c3/nav-pilot-linux-amd64"
      sha256 "d6de20e36f319235e89bce0dbf98db5927e476ea9d049f0e9e370e88f14ea82e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
