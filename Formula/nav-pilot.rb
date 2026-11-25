class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.25-105804-15af1f9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-105804-15af1f9/nav-pilot-darwin-arm64"
      sha256 "75df36bfc4d1270661e2615e8f9791931bf08c2edcf261703c54ec64b61888f7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-105804-15af1f9/nav-pilot-darwin-amd64"
      sha256 "e0bc8e1b704f1e415d9ba2565a48322bdce9632a5267b2aceb48b7c95abe4d5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-105804-15af1f9/nav-pilot-linux-arm64"
      sha256 "deadf6e913d79dcdfd78b0711b0c1f7a8d75f46991bc186d3d3b2b5d17b0511b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-105804-15af1f9/nav-pilot-linux-amd64"
      sha256 "90690f1105d6a73ccef1dac72f6a953473aaa04e1340bc4a97cc8d94822900e6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
