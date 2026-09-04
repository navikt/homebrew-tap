class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-175942-531d3af"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-175942-531d3af/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5654a241917b438f7972cdec611e1fc3b92955737865d83b9de565a37a79df5a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-175942-531d3af/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c7826ff17f619080728bbe3a43622432bde8bf88ce46a81c715cec20cd4c897e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-175942-531d3af/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f30dee0fcf6c681a711651f42cd4b4e31b670ba11cde1dc2701e4635e1710134"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-175942-531d3af/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f65b6a25bb8da8be39dd5cbbc6e55c0f5e7222f2ee69ff38a7bb26929fbfd89c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
