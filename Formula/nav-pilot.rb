class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.21-214744-f40399c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-214744-f40399c/nav-pilot-darwin-arm64"
      sha256 "eac09e761a8be3aba72d3f840b9bb27b2db66b32d5c682bea6648f7469d442e5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-214744-f40399c/nav-pilot-darwin-amd64"
      sha256 "ce77b9724e8062d0858f96c695cfe6c112c66286fc3415613d2e51d7826a5b9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-214744-f40399c/nav-pilot-linux-arm64"
      sha256 "f4cc98bb0b3a7bc0337386f8fa81dd46d19db203512ae1f3182c2e110eee3267"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.21-214744-f40399c/nav-pilot-linux-amd64"
      sha256 "493f05ca64e51367b60c9db177761e2035e07e3a2f8a2feb4f0836a8e9754cd6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
