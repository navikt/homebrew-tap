class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.14-195601-9b9b49b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-195601-9b9b49b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e993cc8ca5c935b185af4ff8b10d0f5a814a297536a23f9acd5e26e0cd80f47f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.14-195601-9b9b49b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c7dafaa05fe534d9918607e241aa0e5088fe423392ab87d65b3d56bd3044d677"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
