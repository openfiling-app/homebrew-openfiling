class Stockstack < Formula
  desc "StockStack CLI — 日本株ファンダメンタル分析ツール"
  homepage "https://stockstack.app"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.2.0/stockstack_darwin_arm64.tar.gz"
      sha256 "e1b2a0ff6d98ddca8dfe6ab1ef3cb3c808664ccc2a8d6ebf02a1f55244a419af"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.2.0/stockstack_darwin_amd64.tar.gz"
      sha256 "ff66621963f811bcf90289d79c022124e86630f71e15069c2023061c36c223e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.2.0/stockstack_linux_arm64.tar.gz"
      sha256 "a8b0958da52d8ba8bf2e4356036a34fda6dbd0f39c33b445aeba4f2251076cd9"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.2.0/stockstack_linux_amd64.tar.gz"
      sha256 "6498612a872943c84864de3c44645104f090f1b2f9d253a0bac993ef69d528ef"
    end
  end

  def install
    bin.install "stockstack"
  end

  test do
    assert_match "stockstack", shell_output("#{bin}/stockstack --version")
  end
end
