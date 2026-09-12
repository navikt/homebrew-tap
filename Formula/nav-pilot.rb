class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.12-225921-bb3fbb6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-225921-bb3fbb6/nav-pilot-darwin-arm64"
      sha256 "0c1153ec15454cc819a1fac01dabe69c6ed62201fe8cba5ee3cd3f14cf4ada00"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-225921-bb3fbb6/nav-pilot-darwin-amd64"
      sha256 "7365ec5d3d6e9096dceee5d11595aa1056635bfad7343708c0b686816c89f64d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-225921-bb3fbb6/nav-pilot-linux-arm64"
      sha256 "f14222e4d4de875acaf5cd03d818754b5c324a359717bdfb2064a41d16402200"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.12-225921-bb3fbb6/nav-pilot-linux-amd64"
      sha256 "d6c534c138c4ee5277f806ef7902b03fefa5510fab807b5f6f418b9ee9f2fa7a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
