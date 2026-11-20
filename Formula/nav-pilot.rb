class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.20-101102-916217c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-101102-916217c/nav-pilot-darwin-arm64"
      sha256 "53268baf1adeb640b319e01e444c8f2764d4a7fd518b7176b9ee7e22bfd0de52"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-101102-916217c/nav-pilot-darwin-amd64"
      sha256 "91fd30eb5e5c89830d80e7a6119ee340db3c2679fa252e53f9eaefedf11b77ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-101102-916217c/nav-pilot-linux-arm64"
      sha256 "f9ecfc0d9c22d78f01168f75425b608e5abb06ab5b58a494769761f02f7f305d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-101102-916217c/nav-pilot-linux-amd64"
      sha256 "e2cc4fcc3faa2235eeb565afbe6b9c027217341767b588c25161905130e58434"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
