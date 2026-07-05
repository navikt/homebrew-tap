class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.05-102106-b075bf9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-102106-b075bf9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "62fa26791abdc4b251d08ad2378f479b2d7a6c8e3df62a87c6cee203dd381ceb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-102106-b075bf9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b98ced43d9658a5062af4843d4fb852baee0635f355ded30ef7909b1bed3bfbb"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
