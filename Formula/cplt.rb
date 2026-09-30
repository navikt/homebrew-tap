class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-124507-b6c4b24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-124507-b6c4b24/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "14afc3bb2bc5c37fb054c93976ac367117a294719c92f07854c1ec63daa4b14f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-124507-b6c4b24/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "05eaf02de973b125a6ca34b67b278ddc908381c62a61ed9741235a336f8e4664"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-124507-b6c4b24/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6948973ab5dd6fabd2e8749f9698332a288a6a1888ef78ace901a79a342b30f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-124507-b6c4b24/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9489ee552d9e5a140b46566b6f2fe27093755262c1a692ae341fe3a61bb98ab8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
