class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.08-074522-0bbf582"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.08-074522-0bbf582/nav-pilot-darwin-arm64"
      sha256 "c285831d66d29af6687b711cea2ba57e568ba9a18898ce91026001c446665fb3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.08-074522-0bbf582/nav-pilot-darwin-amd64"
      sha256 "6197a0a6232a5c63316481f17ebe98ba7a089a33bb3c8fe16281d71aff4e6415"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.08-074522-0bbf582/nav-pilot-linux-arm64"
      sha256 "ed36fab97f3287bd2c83e517e194f945b2a5462075a3884750c65d56580d24d7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.08-074522-0bbf582/nav-pilot-linux-amd64"
      sha256 "d6fc2cfbe06767be9de35d93f22a54a830fb3468f527038b297788e1b5507bd8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
