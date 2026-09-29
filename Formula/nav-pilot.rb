class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-110936-61dff80"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-110936-61dff80/nav-pilot-darwin-arm64"
      sha256 "c615e01648c61043b2e584d36897bee4358ece2fae9216e5e91c5f5147bfed2b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-110936-61dff80/nav-pilot-darwin-amd64"
      sha256 "dfb4eb623fec48e03a97d696e81faa812cdcba682d25eb77cc5e90e04e981af9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-110936-61dff80/nav-pilot-linux-arm64"
      sha256 "9931aac1772fda5be1b81576a0e654b818fa768a837c93041d6de3bfef9e37c5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-110936-61dff80/nav-pilot-linux-amd64"
      sha256 "678d3b545f5782678b782ad72514a8e2b6187f3a4a6b7839f5dca6239ba5ed54"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
