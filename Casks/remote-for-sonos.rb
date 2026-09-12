# Homebrew cask template. scripts/release.sh fills in the version and sha256 and
# pushes the result to the jens-wedin/homebrew-tap repository as Casks/remote-for-sonos.rb.
cask "remote-for-sonos" do
  version "0.2.2"
  sha256 "edeb9de897a55ec481eef358eb93d0a1bc7d218d5de99b90a0fe35237f24bb8e"

  url "https://github.com/jens-wedin/sonos-remote/releases/download/v#{version}/Remote-for-Sonos-#{version}.zip"
  name "Remote for Sonos"
  desc "Menu bar controller for Sonos speakers on the local network"
  homepage "https://github.com/jens-wedin/sonos-remote"

  depends_on macos: :tahoe

  app "Remote for Sonos.app"

  zap trash: [
    "~/Library/Containers/com.jenswedin.SonosRemote",
  ]
end
