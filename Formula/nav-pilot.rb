class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.13-214524-d66b802"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-214524-d66b802/nav-pilot-darwin-arm64"
      sha256 "0a20838178095e0f637d50b0159956534d931ccfacddea6ca2d93dab391bc702"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-214524-d66b802/nav-pilot-darwin-amd64"
      sha256 "9762128ef4158e6758ef218f558e8902adb5d3f23919f17d2c07e253aed25220"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-214524-d66b802/nav-pilot-linux-arm64"
      sha256 "a35aa506edf612fc5b229911477730b5674f100ee58ac5728b00878dc5b9e507"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-214524-d66b802/nav-pilot-linux-amd64"
      sha256 "7f0def68054da6b2af277740ca1fbe460085b0700807319a4123a4db5dab5230"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
