class Stockstack < Formula
  desc "StockStack CLI — 日本株ファンダメンタル分析ツール"
  homepage "https://stockstack.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_darwin_arm64.tar.gz"
      sha256 "24fb33890d34047ff98d13025344414a34e72e329f6a0fd4350ceb0568432944"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_darwin_amd64.tar.gz"
      sha256 "d56339a8bba8c82a134b8d176afa53d07cace5197c609c63c28b72bea69c9baf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_linux_arm64.tar.gz"
      sha256 "1b3d44763303325a5ff60e924a310c384b015d47f0a81b86c7f252461092c409"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_linux_amd64.tar.gz"
      sha256 "c0cf2337218474388cd6039d665b9a41465bf159abab983450e4c0f05a0072a1"
    end
  end

  def install
    bin.install "stockstack"
  end

  test do
    assert_match "stockstack", shell_output("#{bin}/stockstack --version")
  end
end
