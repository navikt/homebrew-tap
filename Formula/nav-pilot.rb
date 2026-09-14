class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-083841-6dc457b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-083841-6dc457b/nav-pilot-darwin-arm64"
      sha256 "46be0ae250602248e5a526e74f068e81ca6ee5755bfb3c6529f662960f35232b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-083841-6dc457b/nav-pilot-darwin-amd64"
      sha256 "0948eca2f524db1fb1bca8f3f0768b82fb4124688d585ddecd9ba5a0cb78f8ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-083841-6dc457b/nav-pilot-linux-arm64"
      sha256 "8a4bb032e9cf856ed6afe8a31807245d287c10c4089cdea62cfd43646cdd8b53"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-083841-6dc457b/nav-pilot-linux-amd64"
      sha256 "538ce1a009f62ff5060fd245fdd5bc8727418323d8276cc98daecbf49b880d79"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
