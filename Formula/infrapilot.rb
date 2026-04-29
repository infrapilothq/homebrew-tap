class Infrapilot < Formula
  desc "InfraPilot CLI — deploy and manage InfraPilot instances"
  homepage "https://infrapilot.org"
  url "https://registry.npmjs.org/@infrapilot/cli/-/cli-0.2.0.tgz"
  sha256 "d000230a0097d97506459078a5ac6d253c5fb42e251762be5905d0c9b5c3a815"
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
