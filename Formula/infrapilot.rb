class Infrapilot < Formula
  desc "InfraPilot CLI — deploy and manage InfraPilot instances"
  homepage "https://infrapilot.org"
  url "https://registry.npmjs.org/@infrapilot/cli/-/cli-0.2.2.tgz"
  sha256 "0c9c8ef4aebb9a314c6fd1368fdc9589fa8983ae776e4a4a1d5f80161ecf030e"
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
