class CloudtruthCli < Formula
  desc "CLI for interacting with the CloudTruth configuration management service"
  homepage "https://github.com/cloudtruth/cloudtruth-cli"
  url "https://github.com/cloudtruth/cloudtruth-cli/archive/refs/tags/1.1.6.tar.gz"
  sha256 "97ddc0107c1d234a00f4921fccbce42360ec1e1527c12b21ccdc9fad38e6bd86"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/cloudtruth/homebrew-formulae/releases/download/cloudtruth-cli-1.1.6"
    rebuild 1
    sha256 cellar: :any_skip_relocation, big_sur: "d8a3aa7fa4a42c729e81aeb5698fc7745c9236514ec686f5b75b6d1ee866a2fa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cloudtruth", "--version"
  end
end
