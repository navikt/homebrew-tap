class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.07-102352-775e9c7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-102352-775e9c7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4032e381bfe7e4c5ce844ec2127057ca7f2c3713d05152ddb16cc997d48727d0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.07-102352-775e9c7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6e6f0eafde4818a0641109dfc9973bd694442df464a26700efefed364a29b4ea"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
