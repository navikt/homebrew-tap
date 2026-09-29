class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-073815-8801b8d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-073815-8801b8d/nav-pilot-darwin-arm64"
      sha256 "8bc7eceb32a9da3adcf1de623a395ea618c7fee945da568368217c312de6e83a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-073815-8801b8d/nav-pilot-darwin-amd64"
      sha256 "6ba86b624dcd4459e6e8b6aa080789412dfdd27eb97345d6811f615d77921e1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-073815-8801b8d/nav-pilot-linux-arm64"
      sha256 "43f854d75316d7e5dcad5cbd910db0e3bc36336823405cbf68915498dab7e1e9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-073815-8801b8d/nav-pilot-linux-amd64"
      sha256 "a35ca61fc6b200a4df061f37a33f125ca7556034f417434be0f58d4aa1082dbc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
