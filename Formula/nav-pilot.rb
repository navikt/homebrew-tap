class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-223958-5a29d1c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-223958-5a29d1c/nav-pilot-darwin-arm64"
      sha256 "c8994bf9d1986f54488f547879acdf9d8f842864df8f9207fa874fed953ee1d6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-223958-5a29d1c/nav-pilot-darwin-amd64"
      sha256 "ede1f93c3f3ac9d2e3d4154e2baa3b70adf180f66cea3fbe50406e704ed749c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-223958-5a29d1c/nav-pilot-linux-arm64"
      sha256 "c0210aa207b5a6b28b9b593768cf96290f8f91372cb3837cc8f5f17855e6c1c0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-223958-5a29d1c/nav-pilot-linux-amd64"
      sha256 "44c1aae11122622863d72c870e8ce0f59f132996e6c49be9711b6558c5ac86d7"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
