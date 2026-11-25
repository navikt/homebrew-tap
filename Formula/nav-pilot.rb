class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.25-150259-990237d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-150259-990237d/nav-pilot-darwin-arm64"
      sha256 "2ae16ff4a4c05fd51973167ef6c795ed9f8105acf267da895849e69f09758fce"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-150259-990237d/nav-pilot-darwin-amd64"
      sha256 "34ac8c8f836cfecdb50088a51e2412c3ec61e9d77e2290c6aedb00df5808d737"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-150259-990237d/nav-pilot-linux-arm64"
      sha256 "6b09aacd52e97fa7b90dc17e7d106a2738820b359f8977adcc69c446d576ef67"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-150259-990237d/nav-pilot-linux-amd64"
      sha256 "06995b19a88bb099d6b12b7716031a9af7532eddd78022fdbf7a4bb87feee77b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
