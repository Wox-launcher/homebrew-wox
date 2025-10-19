cask "wox" do
    arch arm: "arm64", intel: "x86_64"
    
    version "v2.0.0-beta.5"

    on_arm do
      sha256 "90707e62d3f3590b77ea85283cd9d93b297ed223f10bd813dadbbfdef431f8a9"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.0-beta.5/wox-mac-arm64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
    on_intel do
      sha256 "8f1bbeb1d69a8e5d9e690835abcb5f61bf8419f710df26f0e1a75bfd9e0b095d"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.0-beta.5/wox-mac-amd64.dmg",
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
