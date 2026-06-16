class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.16-091529-95c7081"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.16-091529-95c7081/nav-pilot-darwin-arm64"
      sha256 "8a3e26bf598988d16bb95565bcf24614f8eea21fe467d34192968410ae3f5e31"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.16-091529-95c7081/nav-pilot-darwin-amd64"
      sha256 "8c95606543ef19acfd55370bb9538b777307bf4f465e2278aea6b9a9c518c86f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.16-091529-95c7081/nav-pilot-linux-arm64"
      sha256 "8a97d5f20d84492a9dc5b251f3ec3960b0fbeea1284ac4b25d02fe6f7a5ef737"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.16-091529-95c7081/nav-pilot-linux-amd64"
      sha256 "7e82f6956f747e0c56693b8667fdb6462d04ecf7a49fea91615f0366a67aa062"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
