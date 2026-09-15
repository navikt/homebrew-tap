class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.15-162513-f378d6e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-162513-f378d6e/nav-pilot-darwin-arm64"
      sha256 "afcb7665bd7b0d8239136be74fcefa07a5d5da49211e34066d989f90e15fc323"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-162513-f378d6e/nav-pilot-darwin-amd64"
      sha256 "e93dfa5460a12bc75cdebd41c323f6620a412cab8cc761586bed71134da7814b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-162513-f378d6e/nav-pilot-linux-arm64"
      sha256 "5280fc47d246da7693deafce44f048b0775cc0c22085d2f20815d4ecceb69d01"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-162513-f378d6e/nav-pilot-linux-amd64"
      sha256 "c01f8340858962868b1df90b82bc56ce5055c3642785d87b171228acae3edd68"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
