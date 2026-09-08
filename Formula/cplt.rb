class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-224029-655d4fd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-224029-655d4fd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8504034cfffaf4fa21552511907a77ecd5af5aad9f56269361b3b68d1ed7a8f8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-224029-655d4fd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "181f2197a343ccde0d748b7c9bad4f65fe8b3ccded5ea5dde5edcee545d7e5a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-224029-655d4fd/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b1d90c6c790d56bc763fc018b4a1f56ca2366f91d0a4a53cbf90faa30dcb3a3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-224029-655d4fd/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06bb91aa32131409670fbb64ca11e50562083fd82d56bce1afb14e4775ba5571"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
