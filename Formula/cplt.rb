class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.27-125539-87091ca"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-125539-87091ca/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4467e6e7bdfe6572746cd45e01f63cafa2efcc1542428e27946265ebe29329f9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-125539-87091ca/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "29d68f9bf3a656fb68cc5de421f36b7c036d120362339a80484e949c163146c8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
