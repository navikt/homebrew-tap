class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-084236-a94b647"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-084236-a94b647/nav-pilot-darwin-arm64"
      sha256 "08610d42791c8deb747adca0136bb95ad7e540886c0efde8985dfd0112fbf981"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-084236-a94b647/nav-pilot-darwin-amd64"
      sha256 "6a264b4668445ca1c1c6c33fce761deb4c60900487071c2cdf1feab72d9eec7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-084236-a94b647/nav-pilot-linux-arm64"
      sha256 "fea41c071a7869b46ebbd2bbcdbf0bf99d8a908f42ec86f7dde8d70d7b2b211e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-084236-a94b647/nav-pilot-linux-amd64"
      sha256 "2339d08ab0b12744da8d8d2ac41cb1179f4435088e7eeb483ec243b2589f6cc7"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
