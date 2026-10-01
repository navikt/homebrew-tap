class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.01-162107-72ba505"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-162107-72ba505/nav-pilot-darwin-arm64"
      sha256 "9b123c313b4679082a2699fa9316b96e0467b49a0d8fc823abd05a94cc642996"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-162107-72ba505/nav-pilot-darwin-amd64"
      sha256 "5775b950409272a7d7ba2f0081bdc21cfb5ed59cff35c39c6e1a4ddf9510b5b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-162107-72ba505/nav-pilot-linux-arm64"
      sha256 "5ffa493a35c8869bcc048b25b016ea76c8cbe0508045db88e996858f45097ebc"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.01-162107-72ba505/nav-pilot-linux-amd64"
      sha256 "1d46f8bfc7f1ead907895c8596e848fce3ecab120a19ce4031eabf9e6c1cd551"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
