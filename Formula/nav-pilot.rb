class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.02-064801-dd125b7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-064801-dd125b7/nav-pilot-darwin-arm64"
      sha256 "09d962a649ec88e1b3f890f2d5ff459ba21621de6d5e1173f6ae47c20d743c41"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-064801-dd125b7/nav-pilot-darwin-amd64"
      sha256 "7859623db0a032b1bf5a6ccf2fbd95219c4d48ee0a1ea7bb65e137e4062d035a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-064801-dd125b7/nav-pilot-linux-arm64"
      sha256 "08efff43353917c92d9eee1177b29d83596c666ed156885a8865bf32a9983171"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-064801-dd125b7/nav-pilot-linux-amd64"
      sha256 "9f66f26e4dfa407c894afa212f174cd0873daf3b4e2c3481bcef5c76611d9653"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
