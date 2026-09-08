class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-121052-b4c22f9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-121052-b4c22f9/nav-pilot-darwin-arm64"
      sha256 "cedfb586b0e5b4a493e28ceaa8e26e1a563243ab9f5f43524a58059791d82567"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-121052-b4c22f9/nav-pilot-darwin-amd64"
      sha256 "67d31b94c6132fe1814cd39deac0dc6cceecfef878b16298cc98ac812de07005"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-121052-b4c22f9/nav-pilot-linux-arm64"
      sha256 "49d72432b4ea982184e3d2485fc7c576a194ca68a274ab7a8f98e113a1444131"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-121052-b4c22f9/nav-pilot-linux-amd64"
      sha256 "c57913878fb000e52ca8091cef46da42d0cd75969775c48e299cd5ad7bd29ddb"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
