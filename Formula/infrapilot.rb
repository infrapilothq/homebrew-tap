class Infrapilot < Formula
  desc "InfraPilot CLI — deploy and manage InfraPilot instances"
  homepage "https://infrapilot.org"
  url "https://registry.npmjs.org/@infrapilot/cli/-/cli-0.2.1.tgz"
  sha256 "6852e8eed448905e276898c86f28a69912c3c8fe00f0e7a719d9806a363d868e"
  license "AGPL-3.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/infrapilot --version")
  end
end
