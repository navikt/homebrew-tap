class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.14-090845-fc9260d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-090845-fc9260d/nav-pilot-darwin-arm64"
      sha256 "af7ac03f68e79862035ffa80efdb68e3a18087e12e33316f07238f99a70474d2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-090845-fc9260d/nav-pilot-darwin-amd64"
      sha256 "d24f5b58fa851fe118a5834b102435d272626c183ff0d743fc00ba3e3be4bf7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-090845-fc9260d/nav-pilot-linux-arm64"
      sha256 "a3bfa95a5ab560aebd85c9aa16980c982080e039650368ba77c45976f152f31b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.14-090845-fc9260d/nav-pilot-linux-amd64"
      sha256 "0b67c98f22f6c057a42b8346e48e0f602c15cac63b7e8769ab1d2edae1e5b09b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
