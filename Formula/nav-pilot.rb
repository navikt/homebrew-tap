class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.03-174942-badb737"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.03-174942-badb737/nav-pilot-darwin-arm64"
      sha256 "75bb1f30cb229701d97e6cd0839b521b45348d9a2e8d6ff4809dfb051f72d72e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.03-174942-badb737/nav-pilot-darwin-amd64"
      sha256 "999b3bb7dc6bac678fcfd6fe09d05b41e88ce3f4d0117d2bda5b2f738351a4b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.03-174942-badb737/nav-pilot-linux-arm64"
      sha256 "1a329d470014dcfc304c3a1c8e425cd94fab3517b7d67418ce295c2dc0c168c3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.03-174942-badb737/nav-pilot-linux-amd64"
      sha256 "8df63ab5533bdb145b4a0d8f5562c2989abb5db2bd81156ead7cf4c0e0c0a0ee"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
