class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.01-062341-5059124"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-062341-5059124/nav-pilot-darwin-arm64"
      sha256 "e77978aa41e66bfcfad6f2344f1724707ed4f6d2566e4360dba085f76b69b2e0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-062341-5059124/nav-pilot-darwin-amd64"
      sha256 "db42b30ba6fa5ef3578f7429fc955ae8f1e6fe5162b6b201d123d065c80184d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-062341-5059124/nav-pilot-linux-arm64"
      sha256 "77c2bae366533c00b48fad1e72be40eef102cf56b4de8cc768abc200ca3ff7de"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-062341-5059124/nav-pilot-linux-amd64"
      sha256 "a7071fbdb6039f3826301510e284ec7986627234607910d7bcc09d59958530e3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
