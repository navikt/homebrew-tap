class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.14-144226-8dd30ac"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.14-144226-8dd30ac/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9984876309dbd129df1c1cbef098ea7d0fbca239460c89d6995e0c8a4ddb05a5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.14-144226-8dd30ac/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b7707f95e7c78a5ef086a6e96b0fe8df17a7fc77a03a8d37598ebb8bd0fb620c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
