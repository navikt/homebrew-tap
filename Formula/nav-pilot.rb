class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.25-090422-6d13bd6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-090422-6d13bd6/nav-pilot-darwin-arm64"
      sha256 "575b02f0f35fcbf2ab3bbf111e13aba3ebab99e13630c7b55c146e52d0693e95"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-090422-6d13bd6/nav-pilot-darwin-amd64"
      sha256 "663a3a0ee0afdcc2563131dfa3974c9736fd6b3915696a8c12f13adbe7b16255"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-090422-6d13bd6/nav-pilot-linux-arm64"
      sha256 "0293ce4c1709c045a2325086f31ceb0202d6b176ff29f8f62343e5a6e380bb84"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.25-090422-6d13bd6/nav-pilot-linux-amd64"
      sha256 "087e40dd2f8aeb4a1081b598c316c3fa3cb6c65abd53fab99f0906b4536776bc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
