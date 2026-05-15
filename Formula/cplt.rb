class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.15-141911-8705e2a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.15-141911-8705e2a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a6d4e23cde6a0367570a122a9bf8549bf1204804d8541a7377a7166a9e92820d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.15-141911-8705e2a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "462c25ad2d6eff019110ded6f90fcb108a50ac9cdb36ceec2b7c8a2f9acf0511"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
