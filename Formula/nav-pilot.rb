class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.11-135202-e0192d2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-135202-e0192d2/nav-pilot-darwin-arm64"
      sha256 "f510f19df07178310e5ec676e6b5ef8021209ad5597c15a3e92cb1c1cde69f62"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-135202-e0192d2/nav-pilot-darwin-amd64"
      sha256 "3fced1478d22fbb28474e2a281d1f54cf63765f611a18df7f08a3f3f7915b811"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-135202-e0192d2/nav-pilot-linux-arm64"
      sha256 "61a53d05ef812da687f5e5f0a64c100962c39fb45c313b70e9918afa96e1c758"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-135202-e0192d2/nav-pilot-linux-amd64"
      sha256 "496f60cd0f56ff7d162db8b1df9908c14f96a3f9f6b84c8b5f2f1b74cc1b309e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
