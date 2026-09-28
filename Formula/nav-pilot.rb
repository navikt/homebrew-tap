class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-053059-a9fa68b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-053059-a9fa68b/nav-pilot-darwin-arm64"
      sha256 "ba12cc913b49051cdd411c1b00e52d212b23a53a03bc64bfd9f969d68cf5410a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-053059-a9fa68b/nav-pilot-darwin-amd64"
      sha256 "31ed57f76c4f91951a23f489e1229a6a531ca44c8aa75340e5bfa439d77be1cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-053059-a9fa68b/nav-pilot-linux-arm64"
      sha256 "f02ce5ca465259280fdcf4b4a28bd2bdd28963dbe8fa415a2eecaf9b854acd5a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-053059-a9fa68b/nav-pilot-linux-amd64"
      sha256 "cf9a937d74fec65c5ff6960484a600a3171b62fc3a09b73c461acb4dbfd37e9a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
