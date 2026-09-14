class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-171039-472c1ed"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-171039-472c1ed/nav-pilot-darwin-arm64"
      sha256 "90f8c624bb0debbcbae46d0eecfd7f52b4b8057dd5a067a7322b92f9666f5a2b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-171039-472c1ed/nav-pilot-darwin-amd64"
      sha256 "0c92c3bcb80285f14a903de1985bca911e8b64d8e00faa8b714f032a039e98b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-171039-472c1ed/nav-pilot-linux-arm64"
      sha256 "eebf47f77136d13c7333b3eb7d0e33121e5cab9c1e9a95f20b6ac38c1933dc31"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-171039-472c1ed/nav-pilot-linux-amd64"
      sha256 "afa471b962301e114445a24eb79913d8c7db0bae223c069c8d1d56839d85adb2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
