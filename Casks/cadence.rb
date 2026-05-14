cask "cadence" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "744364abf4a50b7bba5f7859de37c0f1030bee0da60b06c1ebd0fd0e5e53c7d5",
         intel: "ed8e2ba6a8b3fbe2aee3f0c911432e46504deea1586ad4a3fd602c30ac2d7a36"

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
