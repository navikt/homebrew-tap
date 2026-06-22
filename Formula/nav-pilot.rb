class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.22-125412-91e6e72"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-125412-91e6e72/nav-pilot-darwin-arm64"
      sha256 "01f66f9d3893dbc04d1bc0717514060786a20f988eb7eb207d685dd83b6649f6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-125412-91e6e72/nav-pilot-darwin-amd64"
      sha256 "5b66e5d0aedf6bfb58927f3892bed04a94dfed9b89521cd9c0ce8823edf4bbd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-125412-91e6e72/nav-pilot-linux-arm64"
      sha256 "d7b5a1fc95db0ee2c458393a1cc76b504e21d880e35761e7d59554aa7701dc5c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-125412-91e6e72/nav-pilot-linux-amd64"
      sha256 "e3fa40d80b9580b97f0860c3c0648f6ed7e1578ea96b1bb9a9c53e425b034333"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
