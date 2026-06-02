class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.02-104855-1f1b2dd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.02-104855-1f1b2dd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ef87e7f50b674f7504c37289b77418da76ed00c4adf68d68e53a59adc33826db"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.02-104855-1f1b2dd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "647b3898dc9d3c0e099cd2603ebae8d7376ef65a1139ac0e3ed658a328a430c8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
