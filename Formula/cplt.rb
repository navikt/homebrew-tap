class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.13-150212-fae9311"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-150212-fae9311/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7b6a0423936bb3c84b4e5e382885648896ec354f8e0c744fa4ae64940e9b96f8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.13-150212-fae9311/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7c9ca1117708deb8fc0096f30cdef4deebb384ae955eb99d85c36c6d26b09cbf"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
