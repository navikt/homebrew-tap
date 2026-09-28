class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-151509-4e8f326"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-151509-4e8f326/nav-pilot-darwin-arm64"
      sha256 "f4ab782a5eaac1a1fbbae6a44f74bc3d63c6b3a7f71cbf29caf885f34158a6cc"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-151509-4e8f326/nav-pilot-darwin-amd64"
      sha256 "c679d60be4d27fe0aed5592feb220e8a1225820f1db1c46f6bf2b0c813f9cf5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-151509-4e8f326/nav-pilot-linux-arm64"
      sha256 "181bdbe8af5ba375ee1b3edab41414c652cdf7d36bc248e3eb8d0bd95f7f93e7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-151509-4e8f326/nav-pilot-linux-amd64"
      sha256 "6fa44550a72996b008aaecddf72370db53a4057d5f9b320bb8dda7cbe780d8dc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
