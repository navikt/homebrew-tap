class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.21-201653-e62b365"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-201653-e62b365/nav-pilot-darwin-arm64"
      sha256 "598a59d5bdfb727e8445af6773905ff2fb1392bdee5b55fc5f62cc0f9472c3cf"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-201653-e62b365/nav-pilot-darwin-amd64"
      sha256 "900e8ac9a12e19ab3ecf61e3bba516f474b0c4cff33f26ef57caeec070ff9c85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-201653-e62b365/nav-pilot-linux-arm64"
      sha256 "3b8b95e692f8ef84c14ded8b17796c96cea584a9638807bde3cc8ee2b61baf47"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-201653-e62b365/nav-pilot-linux-amd64"
      sha256 "3e25314e0ac1e0bd1d02b5e0547cae8270ee3b49fd8add036b768612ecf886ec"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
