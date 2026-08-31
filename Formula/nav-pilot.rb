class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-195719-f39d640"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-195719-f39d640/nav-pilot-darwin-arm64"
      sha256 "0f49711883532529a961028f0332bc3e0c98431279c98852611573cf74b45af7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-195719-f39d640/nav-pilot-darwin-amd64"
      sha256 "9cc24a530d6b3dc69b1cc1e2e767edb76702108ad00a93aef9d573356766c0ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-195719-f39d640/nav-pilot-linux-arm64"
      sha256 "b9cbb2a4380cff4417c528aef9e62177d4b5e7e8973f5debc7392c1c12995e47"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-195719-f39d640/nav-pilot-linux-amd64"
      sha256 "0359528060e305e38904439c4b70c1d45ba52fae15fd38e7e501b55a58158f39"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
