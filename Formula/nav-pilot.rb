class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.07.14-203640-7b8f3d5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.14-203640-7b8f3d5/nav-pilot-darwin-arm64"
      sha256 "abf790ec0f45d060f61de15fd80ab2d6ed67274af546bdb6cf83d99349661f69"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.14-203640-7b8f3d5/nav-pilot-darwin-amd64"
      sha256 "10b40eac458b2bbaa2185bf0eb33742339b46ceae0d2dae0a1350d987bb506aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.14-203640-7b8f3d5/nav-pilot-linux-arm64"
      sha256 "b1aed77ceff3a9b50cf2ec4d6a2bf7a972a92bdd2af2dd5a0f9f3ec23f52185e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.07.14-203640-7b8f3d5/nav-pilot-linux-amd64"
      sha256 "dd83c1e202f1ec83096059613cb3813c7ee9087e8456ee5a9505cb465e893ced"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
