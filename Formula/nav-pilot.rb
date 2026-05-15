class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.15-102310-d655529"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-102310-d655529/nav-pilot-darwin-arm64"
      sha256 "50a09826fb3efd957ce66cc555af80a75953d9149d5c5b0c6c61ae04c8a4d717"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-102310-d655529/nav-pilot-darwin-amd64"
      sha256 "5ff80b3309ad7109ae31afd1bb627774332fd8110b1e94891decb7e253254ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-102310-d655529/nav-pilot-linux-arm64"
      sha256 "6c95e057dea16c036b9c66fe1a0dd3b402fd09def76463bfc5ac08ba6ec13063"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.15-102310-d655529/nav-pilot-linux-amd64"
      sha256 "f55581d9b78a67b6b716a7311fc6103519ce1130f53439e08477995c79bfcda3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
