class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.29-115810-f85a180"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-115810-f85a180/nav-pilot-darwin-arm64"
      sha256 "4e58b598fa84bcff5a03fc42c4808fa18f4138ba899f8779b3b8b1ddb41c80f0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-115810-f85a180/nav-pilot-darwin-amd64"
      sha256 "aa6aeb2834aa04b4c351211d05717146722affa3485c7ddfb0fd7fcef67fdbb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-115810-f85a180/nav-pilot-linux-arm64"
      sha256 "423ea151534ec18705b040ade5910cbd24f582e606f109c3f5a1cc4f32adad2e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-115810-f85a180/nav-pilot-linux-amd64"
      sha256 "e1d73426f15aa90fb5b9bfd9462f58e1c33d23b431915324effb7ab428beea00"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
