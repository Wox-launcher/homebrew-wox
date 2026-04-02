cask "wox" do
    arch arm: "arm64", intel: "x86_64"
    
    version "v2.0.2"

    on_arm do
      sha256 "30c75c0c8a959a6589c950037d1e98c35de98c1d850924e2c4be1ff5f545779c"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.2/wox-mac-arm64.dmg",
          verified: "github.com/Wox-launcher/Wox/"
    end
    on_intel do
      sha256 "2485b696c4ede06bb45d257ab7931144d055728db3d8b95c7098defcc3aca01c"
      url "https://github.com/Wox-launcher/Wox/releases/download/v2.0.2/wox-mac-amd64.dmg",
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
