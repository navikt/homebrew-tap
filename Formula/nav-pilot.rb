class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.26-152115-25e868c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-152115-25e868c/nav-pilot-darwin-arm64"
      sha256 "bf91dbef0ec6f50b9541177b12e189cd933e3e1f4075d1053e10ff7bfc1f50ff"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-152115-25e868c/nav-pilot-darwin-amd64"
      sha256 "466fdbb092a930d1d854d14c74669f8f36cbc828f06b1c0c9bd159960b9b12bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-152115-25e868c/nav-pilot-linux-arm64"
      sha256 "8de49ead83c74f73a593c0888daa6d18ae4a6e057a49a8cded71c323319ef73f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.26-152115-25e868c/nav-pilot-linux-amd64"
      sha256 "4917bf56f0e8bc3f1bda1849d21097afc9f7a76c1b77c9a2e828352e5d67cfda"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
