class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.24-084539-0dda7bc"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-084539-0dda7bc/nav-pilot-darwin-arm64"
      sha256 "b9d903cdd47952ba9db1389494a106d49e7a88534444c6ee9d336f6f0f9a95a8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-084539-0dda7bc/nav-pilot-darwin-amd64"
      sha256 "66c79b1c4d26335a70ce5966a4dba45acf1cfbf8717089b0eccf1c790312c54a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-084539-0dda7bc/nav-pilot-linux-arm64"
      sha256 "7315eaa6a8f1f3c5cf720a78ee70602f66e8001949e60946b83967dbba45862a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-084539-0dda7bc/nav-pilot-linux-amd64"
      sha256 "cc90c8f4c9161fefc3dbeb2f7929cc02bfc4bc6afc353be0c2cb1c932bd08369"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
