class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-203249-38a3099"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-203249-38a3099/nav-pilot-darwin-arm64"
      sha256 "99021c4ec65a401bbd22d697a65a36ca308acd6cf001400b9e6d37aa97b477d1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-203249-38a3099/nav-pilot-darwin-amd64"
      sha256 "b5f061c1ffa8082b736c3162eaf2cb6b02023d9cedaf7fe14e76111900bde96b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-203249-38a3099/nav-pilot-linux-arm64"
      sha256 "613872d83db43c22aa343f72ebc185dbbf6a42e26785181b3ca4e5658638bd4f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-203249-38a3099/nav-pilot-linux-amd64"
      sha256 "96a0de30f748af3bd162c6e2f77e33c61bfffd38471bc0c50646c45f2e6e910b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
