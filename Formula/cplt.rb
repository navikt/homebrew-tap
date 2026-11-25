class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-200134-17baf3f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-200134-17baf3f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "052754f7ff09742a5c5ae8edd18b996aa28de5782aa29cbc4e0a0bc207b8c754"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-200134-17baf3f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "432efa0f8013c7fb4f0d6a4574c83f6b75005e7223aa8b0e152e425f5fab6bad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-200134-17baf3f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9910fd698a6463f9b2c48495d762700ebba8c15d2d8e985e95150fd0addff95a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-200134-17baf3f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2404af22ec45285571f250bec68a6410909b26f82e38c3d483c75f4a9981bec"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
