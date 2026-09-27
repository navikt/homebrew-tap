class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-172722-d3cc4d7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-172722-d3cc4d7/nav-pilot-darwin-arm64"
      sha256 "d79e732ec15d3c77cfb844ddfb14cc5d7ce3030f38d145728a5c5c726e392c9c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-172722-d3cc4d7/nav-pilot-darwin-amd64"
      sha256 "1a368c04258d85afae2229caf04ffe89b3af1a67647e20f65c1c5f5f446e5a62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-172722-d3cc4d7/nav-pilot-linux-arm64"
      sha256 "a7c6a4c7fd9d46804b496c0eaaea63e67a272c7fe812a2f6c59537ff566c18a5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-172722-d3cc4d7/nav-pilot-linux-amd64"
      sha256 "caef7e32246799886d5122219ccdf03ed2065e3ddad029a191489d4f5dae8047"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
