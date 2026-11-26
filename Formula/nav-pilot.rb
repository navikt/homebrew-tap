class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.26-093357-3490184"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-093357-3490184/nav-pilot-darwin-arm64"
      sha256 "82298a264644165b66e63c8912c8c3617cca0c214be0f392193a9b734fe6889d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-093357-3490184/nav-pilot-darwin-amd64"
      sha256 "213a97c0d8ca3467d85d86ce29cfa4f36b116db4917bcbd38d3919c0b35e8d91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-093357-3490184/nav-pilot-linux-arm64"
      sha256 "cf0594e5d8d8b25c55f2785cc195b9a68436d0f8877674086c2251d852d2b069"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-093357-3490184/nav-pilot-linux-amd64"
      sha256 "11178165e8c81269265b4e96edb6974b8cea0b4000925534d9bd010c3be6bc9b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
