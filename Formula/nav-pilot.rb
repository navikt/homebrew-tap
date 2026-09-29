class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-150831-99295f4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-150831-99295f4/nav-pilot-darwin-arm64"
      sha256 "d78abd54803639993b4c2fe60823aac3481216991900ee27d83dd94a1b34c05a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-150831-99295f4/nav-pilot-darwin-amd64"
      sha256 "6350a716a6e7d430e691fdaa8d1deeb7030715dc7afecd2fd0499c4386f23467"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-150831-99295f4/nav-pilot-linux-arm64"
      sha256 "c41050c5df512368aedbf254ed32856e94d2d12d5356e3b16b1c0778c4c21470"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-150831-99295f4/nav-pilot-linux-amd64"
      sha256 "6987b4682afbc6df05cb52f29d23b48ac24071049b7a060d7c7d69c7d63c1f45"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
