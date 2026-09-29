class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-093157-8673d67"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-093157-8673d67/nav-pilot-darwin-arm64"
      sha256 "90a7433917a2063ed04edd4e825da70f1d036802118ae3f514ead3d28a85c8db"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-093157-8673d67/nav-pilot-darwin-amd64"
      sha256 "cbaf540c267e972a7dff046644e3d7b618f032c621ec1cc9221543d2cdd0edfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-093157-8673d67/nav-pilot-linux-arm64"
      sha256 "0048342b1ac7e17f1ec7adcbceb9fe24e6ef8626816176954042549b688d7e63"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-093157-8673d67/nav-pilot-linux-amd64"
      sha256 "31fa29806a742cca9d2b46886f908f87ba1842db21ec968f12877d0bca41b99c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
