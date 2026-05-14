cask "cadence" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "620d8a19af9c12a521e14356c43648777b404e15d4059d214573a628f7e8f7c1",
         intel: "271f3b1a136c6f4b0b563db0fbe36c535e26d846677ac08b6eea94c20479f8c2"

  url "https://github.com/baptisteArno/cadence/releases/download/cadence-v#{version}/Cadence-#{version}-#{arch}.dmg"
  name "Cadence"
  desc "GUI for coding agents"
  homepage "https://github.com/baptisteArno/cadence"

  livecheck do
    url :homepage
    regex(/^cadence-v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Cadence.app"
end
