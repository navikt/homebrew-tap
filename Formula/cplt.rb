class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.16-205946-66ad978"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.16-205946-66ad978/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "43f67700cebc612d4aa1f5e47c9b9355d6ccc1388811556b49c1b98fc84f5773"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.16-205946-66ad978/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d66e796b01fcf2d712f3e67e7aa06ac4be196c069f60a89fca815fef5309e54f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
