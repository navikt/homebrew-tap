class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.06-102349-97a0e26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-102349-97a0e26/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ba8eec2ff44cabce4bbb795b06a350b35ce6d8d8da16cf8fedc152b0296ffdc5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-102349-97a0e26/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "5d8e179e489ad74d388cf3f5f85ee81fd270f88c0ebf78abc7bf75f5159d19d7"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
