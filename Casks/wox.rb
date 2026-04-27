cask "wox" do
    arch arm: "arm64", intel: "x86_64"
    
    version "v2.0.3"

    on_arm do
      sha256 "30b2f9b462c121e17336fb7e9ed0c028289bc97f4935923d6bea30ac48562498"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.3/wox-mac-arm64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
    on_intel do
      sha256 "f7ed97ef9f7b2d65a076cd337448607e4aaabd9462835f81990482dcb93f97f5"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.3/wox-mac-amd64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
  
    name "Wox"
    desc "A cross-platform launcher that simply works"
    homepage "https://github.com/Wox-launcher/Wox"
  
    depends_on macos: ">= :big_sur"
  
    livecheck do
      url :url
      strategy :github_latest
    end

    app "Wox.app"

    zap trash: [
      "~/.wox"
    ]
  end
