class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-141332-8814a89"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-141332-8814a89/nav-pilot-darwin-arm64"
      sha256 "260408e196d84fa6ea9e705e1c18b1f6f96aa9b23a5db892af25ca610aeccd2e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-141332-8814a89/nav-pilot-darwin-amd64"
      sha256 "c4b6adfd393060b36f82836950ac78dab45bd8f0fdcecd1f0f4ca452554ea8ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-141332-8814a89/nav-pilot-linux-arm64"
      sha256 "ee221022a793e397146f6b6fff9f9fc5562f63f041ecb60456a9cf865104632b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-141332-8814a89/nav-pilot-linux-amd64"
      sha256 "16a1ffb5ff4fd5aac774eb911d2fcf2cde1eb559270e73c2157b7bab076f7f4e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
