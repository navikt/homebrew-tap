class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.24-192123-4a60511"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-192123-4a60511/nav-pilot-darwin-arm64"
      sha256 "040fe580537ac318c5e2ff30924d855fa6964241c07a313e5474bd958ec1ab07"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-192123-4a60511/nav-pilot-darwin-amd64"
      sha256 "bf39c7b5ccc909e06be41be5c353d5ea6332f00afbfcf7529824a1d118bfab45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-192123-4a60511/nav-pilot-linux-arm64"
      sha256 "a939d325388ec7519aa9d70ae118030085fa6f28cdc2a7d03aa3e70214e58fa4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-192123-4a60511/nav-pilot-linux-amd64"
      sha256 "4d57c71bc549e93e80195d12f5af587afa451b6766ef651f9c7bd8151c60b98b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
