class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.26-005613-670bcd9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-005613-670bcd9/nav-pilot-darwin-arm64"
      sha256 "7a5b1c03dd31daf16999ccadfc67c9071338cb322b63520e0f239c24a4ed1249"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-005613-670bcd9/nav-pilot-darwin-amd64"
      sha256 "7894ade31efd601d0c1adb49e1dc3a21f3d56eca653f76b45fa288159c71c9ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-005613-670bcd9/nav-pilot-linux-arm64"
      sha256 "72d746627e6bd947147dd16a48f883787d9d6b07223c22b19b68506490d283cf"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-005613-670bcd9/nav-pilot-linux-amd64"
      sha256 "454e7d9edd77dd5fe799662630a88745fd7b1ee5543f823070398229413c7330"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
