class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.29-102456-21eff92"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-102456-21eff92/nav-pilot-darwin-arm64"
      sha256 "fb16adda95f5a422b6605f0509355b6a3cc378334291160a0ffd852f51f2aca3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-102456-21eff92/nav-pilot-darwin-amd64"
      sha256 "5adf22df2edfe22726eb1446ee8c63c9b23b9890ae7d347aa831b8a19fa8789e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-102456-21eff92/nav-pilot-linux-arm64"
      sha256 "e9346235993162f26555e17a5e78f10ea6919a3b19b7098662e608158b892048"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-102456-21eff92/nav-pilot-linux-amd64"
      sha256 "953ac162af5baa7e5b4b9c309cf5d736667a79a5ee19ccadbdeabc909cc1ff62"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
