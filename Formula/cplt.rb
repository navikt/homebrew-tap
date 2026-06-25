class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.25-183948-771ef6e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.25-183948-771ef6e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "925296975584e749636fa5d9ce0096c57d0f7713b54b647cc0947cb9890dce32"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.25-183948-771ef6e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "59c415e0cb82b617b3f8f8373785843a67254b54c6ef26cbcae23f32393d3686"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
