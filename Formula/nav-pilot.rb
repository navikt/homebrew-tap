class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-161417-f26117e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-161417-f26117e/nav-pilot-darwin-arm64"
      sha256 "877936f6ad34f23c31e26faa274a7607484b864ac1d299432ce4487cf6de51d2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-161417-f26117e/nav-pilot-darwin-amd64"
      sha256 "e531bd03aa1e0922538482be46f291559eee305c33eb39fc595514ae697be74a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-161417-f26117e/nav-pilot-linux-arm64"
      sha256 "66ca5fcd6177731c28e688dc74e617d8af2ae296b72714d8aa3aeaa1fc5bf567"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-161417-f26117e/nav-pilot-linux-amd64"
      sha256 "8ad2555172e1e7fe1daa5a3ee0f49a69478860b830347ce8360d0b773873b9be"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
