class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.02-223812-96bba50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.02-223812-96bba50/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d401fe95b75bb02e830f44be56f455f9c118ba385c4214244e32ba0736209696"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.02-223812-96bba50/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ed6e1fff14722444f685cc5f61b8e49e939f36c0c62a046e099ede0203c3fc2d"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
