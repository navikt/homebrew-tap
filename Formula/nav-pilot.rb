class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-162213-b10a4ba"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-162213-b10a4ba/nav-pilot-darwin-arm64"
      sha256 "148d363abd69087c450453af60d0bdce2084147f838a7f53a56a674d3e0e7ce8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-162213-b10a4ba/nav-pilot-darwin-amd64"
      sha256 "1d34a650e1a09b64c7f4f8c9f72156ad472fc11a3b9d56f8edf0ddf9ca06278a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-162213-b10a4ba/nav-pilot-linux-arm64"
      sha256 "3517c5e03914a1d4294462ebc1dee53883b41e7d1502aeb7ddaa1f25fc996ac8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-162213-b10a4ba/nav-pilot-linux-amd64"
      sha256 "cd90658ec32168bdab4a81e8e2c2f9be14e1d69b219d656b71338512ce8f7e1a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
