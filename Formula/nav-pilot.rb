class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-222605-fc30e0d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-222605-fc30e0d/nav-pilot-darwin-arm64"
      sha256 "e062e5797afc74a2481e172a8f73f6b8aa2ee1b28caf3312d44501ef3f88f8dc"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-222605-fc30e0d/nav-pilot-darwin-amd64"
      sha256 "7acb033b07145e97c8d990642ab8496d70f2e5655db335bbb545aaaaec013f1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-222605-fc30e0d/nav-pilot-linux-arm64"
      sha256 "97c41a75a57f003775e7d3b5492e7744c846418187b8bf65e1e2fab63cbe75c2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-222605-fc30e0d/nav-pilot-linux-amd64"
      sha256 "41973c26677d4b7c43609e4354ad5f7682311eb34314204dbd2a80dd7c84fe1a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
