class CloudtruthCli < Formula
  desc "CLI for interacting with the CloudTruth configuration management service"
  homepage "https://github.com/cloudtruth/cloudtruth-cli"
  url "https://github.com/cloudtruth/cloudtruth-cli/archive/refs/tags/1.1.6.tar.gz"
  sha256 "97ddc0107c1d234a00f4921fccbce42360ec1e1527c12b21ccdc9fad38e6bd86"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/cloudtruth/homebrew-formulae/releases/download/cloudtruth-cli-1.1.6"
    rebuild 2
    sha256 cellar: :any_skip_relocation, big_sur:  "eb15092582ef5711d328074872abcc48c9d4ec34162761f722085284764b0873"
    sha256 cellar: :any_skip_relocation, catalina: "0adfa7f48d82bc0638c8728e70b01bd57ace089e7f00804577677866655d5d2c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cloudtruth", "--version"
  end
end
