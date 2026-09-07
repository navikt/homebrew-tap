class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-185342-f024d08"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-185342-f024d08/nav-pilot-darwin-arm64"
      sha256 "539e0625a86bd16bcd8a1eb3a71cbbcba0d4497cc51bf018f0e9ffc02c83af64"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-185342-f024d08/nav-pilot-darwin-amd64"
      sha256 "b4acb9185a96cc6ed3b942c0365c1ab8333fd8baf0febd86c6ca69f8a12aaa94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-185342-f024d08/nav-pilot-linux-arm64"
      sha256 "8226ef337109bb6eb38050bdb8276901769e238a2fdd11ad40634f06b8ea2b04"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-185342-f024d08/nav-pilot-linux-amd64"
      sha256 "597039b58023229ad1fe55682165ffc14ee4fc70063106e50338dddf8e4177b8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
