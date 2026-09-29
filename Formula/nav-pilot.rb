class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-163407-9048d2c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-163407-9048d2c/nav-pilot-darwin-arm64"
      sha256 "3669703be1de20d98fbd48bab992edb8286495479a0fbb1c93fedc8277da81be"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-163407-9048d2c/nav-pilot-darwin-amd64"
      sha256 "324e94eb10e22176198555532916779db93c942952bd83779e632ec6f30e57ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-163407-9048d2c/nav-pilot-linux-arm64"
      sha256 "85e77b6a5c7a09273fe5a574cbfd735b61f1f74fa8d7f40293e02fd6dec93211"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-163407-9048d2c/nav-pilot-linux-amd64"
      sha256 "7072d5a7849dc2efcbc49c4b7ab474a53aa337d4a42e49913c035926f394d39b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
