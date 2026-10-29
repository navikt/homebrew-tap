class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.29-142608-23f9703"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-142608-23f9703/nav-pilot-darwin-arm64"
      sha256 "8906a254a57dee85183dc2878a85ec3bf12635898fc747febcf0ce8f98fe1b5a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-142608-23f9703/nav-pilot-darwin-amd64"
      sha256 "0fc8fe45b1e928fd43cf6a88d076f60caf8494ca78cb7ef17b7f1ff6681f1472"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-142608-23f9703/nav-pilot-linux-arm64"
      sha256 "d8558c34f5665a39cd9f5c09d1950207f21310da9c80bfa96db866603b987c0e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-142608-23f9703/nav-pilot-linux-amd64"
      sha256 "624721f42d20e5f4e59d41d5d220df3e0d36b0b887c99b105f12f31160cf1599"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
