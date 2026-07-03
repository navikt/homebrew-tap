class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.03-152736-aba80c5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.03-152736-aba80c5/nav-pilot-darwin-arm64"
      sha256 "3c3da9442048e679c5df01052003708148f4b13c1521c9c325918c8e7507c53e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.03-152736-aba80c5/nav-pilot-darwin-amd64"
      sha256 "d8c286590289246d065e3c79b1df669639faf90dc1d54cb0429d6f7c3fa61a3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.03-152736-aba80c5/nav-pilot-linux-arm64"
      sha256 "2ec5bd951c9402348723ba374da177339f57897a4febb75816ec1ae47a2bcf7a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.03-152736-aba80c5/nav-pilot-linux-amd64"
      sha256 "66549c9bffef091c2e269c8abc77a6e5a763b5e711007e3be3e01eabd9cee7b9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
