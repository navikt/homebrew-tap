class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.20-194821-8b2cb9f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-194821-8b2cb9f/nav-pilot-darwin-arm64"
      sha256 "2300a42710f625cc3894b8998d63778b3202c09331304d02a185a668c7c95332"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-194821-8b2cb9f/nav-pilot-darwin-amd64"
      sha256 "267b14b3b3af81a46c092fd857f6c0286ee57103f8fe75e4251b0167ca78712d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-194821-8b2cb9f/nav-pilot-linux-arm64"
      sha256 "2aaab9674dc20e6936a7a4e326b33717be2ff5734e67500336548966f9df0cfd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-194821-8b2cb9f/nav-pilot-linux-amd64"
      sha256 "84c0623f03dfa8dd7e5e89609f5b972b40b1acadac7c7f1d87443439042b948d"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
