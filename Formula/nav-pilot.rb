class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.27-123813-7e99556"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-123813-7e99556/nav-pilot-darwin-arm64"
      sha256 "8c448f3c33979837fe914431d72b4482ea09bc0882474007cfc4d6984d703ee9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-123813-7e99556/nav-pilot-darwin-amd64"
      sha256 "fea524f30e1943ff7eb20a58c3e97d59de5dd7a84b53151df0f6434eed055b1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-123813-7e99556/nav-pilot-linux-arm64"
      sha256 "0b1b6cea88af69e617b011f4dacff08bee2e85018d74df648f77f3d476bc44e1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-123813-7e99556/nav-pilot-linux-amd64"
      sha256 "b1cbfb3c0ce6b913b49883ddf88af913fac1e4c35da2561cffe2ca3719632980"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
