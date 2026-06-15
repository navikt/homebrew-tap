class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.15-083243-168c1cb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.15-083243-168c1cb/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4700cb76973f3cbcb5eddfa432a59915b1e550187ca212600f367eefa0694646"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.15-083243-168c1cb/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "67f795a20e7da55b8492a1e70f8b5f9f4ccbf56d55a26a8707b025373f81c0db"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
