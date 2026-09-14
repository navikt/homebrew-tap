class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-092106-d8a9a03"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-092106-d8a9a03/nav-pilot-darwin-arm64"
      sha256 "f1fd87b1d80a71d6dd26b9854ec9c8efd43905d296c01f74ca1d967d7dfa5176"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-092106-d8a9a03/nav-pilot-darwin-amd64"
      sha256 "ae1921502307d4e67b80b2e6c28e558fa2eb47a209883c63e348185415dcbbac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-092106-d8a9a03/nav-pilot-linux-arm64"
      sha256 "56dd5f7faad108811b3debd0f231e241ab97c81c571d072f4a89125072d7bd03"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-092106-d8a9a03/nav-pilot-linux-amd64"
      sha256 "e41157a7f59b8ff2387f625d1ef5438ee03674e3b91973b3e195257b14f5d1fa"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
