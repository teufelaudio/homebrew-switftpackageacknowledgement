class SwiftPackageAcknowledgement < Formula
    desc "Create Licensing Views from SwiftPackageManager Packages"
    homepage "https://github.com/teufelaudio/SwiftPackageAcknowledgement"
    url "https://github.com/teufelaudio/SwiftPackageAcknowledgement.git", :tag => "0.1.6"
    head "https://github.com/teufelaudio/SwiftPackageAcknowledgement.git"
  
    depends_on :xcode => ["11.0", :build]
  
    def install
      bin.mkpath
      system "make", "install", "prefix=#{prefix}"
    end
  
    test do
      system "#{bin}/spm-ack" "-h"
    end
  end
