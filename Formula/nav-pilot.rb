class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-170943-7ff8068"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-170943-7ff8068/nav-pilot-darwin-arm64"
      sha256 "abeeb23347957d364d205f517d8936cf552d84ae334c1eef6bd286d4e163dc05"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-170943-7ff8068/nav-pilot-darwin-amd64"
      sha256 "30ba3a82dc5992e9ebd514417dcb3b4e233a17fdcb55f844a306d82473c173f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-170943-7ff8068/nav-pilot-linux-arm64"
      sha256 "a38b17cb82458b97c704379c8537a95862b9d682568fce515aa90fd7451c39e3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-170943-7ff8068/nav-pilot-linux-amd64"
      sha256 "26e2dc2384407bd22da3889b00ef8116185681bf63377dd96971255669b91973"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
