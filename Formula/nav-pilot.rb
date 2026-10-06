class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.06-123103-280dd0c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-123103-280dd0c/nav-pilot-darwin-arm64"
      sha256 "bd7d864424eb92b9b888bc1e310430211ef657d3eb36ceb526bdbe7ce0aceb7d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-123103-280dd0c/nav-pilot-darwin-amd64"
      sha256 "f28fc94f2e64a4d34a71784421aa384b609c6fbc4da758fcd5d2ccb1b253d936"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-123103-280dd0c/nav-pilot-linux-arm64"
      sha256 "a53a805f577e1b954d5786fb5a1250827d5001b18a95abfe364f5b515cd03bd8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-123103-280dd0c/nav-pilot-linux-amd64"
      sha256 "2ad5e78421c40a9cbe897aaced2908d4a4a1c7b7e76812c9ea8cdd1a40e7f635"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
