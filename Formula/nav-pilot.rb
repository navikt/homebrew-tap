class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.18-102119-7fcaa7b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-102119-7fcaa7b/nav-pilot-darwin-arm64"
      sha256 "f4d13ebb2902c84ccfffc7008aed4869c0f15ebb445d385a3aa9b5c6b5e2747d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-102119-7fcaa7b/nav-pilot-darwin-amd64"
      sha256 "b3dd8d9395d5100339e530e5c194856cd1ff1d1fbb36be5ede07dc9d02bb1b4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-102119-7fcaa7b/nav-pilot-linux-arm64"
      sha256 "103fd2078332a5580ebadbbd0832996a38fa6919cac931cf778195f9982972a1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-102119-7fcaa7b/nav-pilot-linux-amd64"
      sha256 "b32377e4a03b97855ecfcda602adc27404cd7f406ea136ea9b3e9dc9c7b00770"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
