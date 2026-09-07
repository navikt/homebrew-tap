class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-204913-98956d0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-204913-98956d0/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a7a8b28861812be91a5ffbd788ea2b59d11ed361951d0ee7fc8cd34c0f8fbd1d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-204913-98956d0/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3d8b0f083320dadc046b609bbaefb608231d731bdd557e938d712b083d947297"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-204913-98956d0/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31a54682ddc5d76f04ca75e19359e4fc16cd68bac160bd7ab830fd6f0065ab9c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-204913-98956d0/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a1f58cda7cb81834c4b07a5465f7ac3ca92d4a53ca4ffd4e35ab9963b437bac"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
