class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-103217-1ce1e7a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-103217-1ce1e7a/nav-pilot-darwin-arm64"
      sha256 "443411f2f0cbb3d63ad9c547d8c0972184e5fac8f7376ac9254f80041e6d8e54"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-103217-1ce1e7a/nav-pilot-darwin-amd64"
      sha256 "ec59aaeb356672278b3cf669cbbc4ae06f081d98d1b70105ccec7b8e5ee56b33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-103217-1ce1e7a/nav-pilot-linux-arm64"
      sha256 "30b36f65b4bec70ed76f066c06fcdbd4938898d2f76a1b215f8ff1f9c7814856"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-103217-1ce1e7a/nav-pilot-linux-amd64"
      sha256 "68b4a394f4fc4620b512dc54c7d7869aef7711ebe2fbcdfa33389a479448ad53"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
