APP_NAME = "YMNetworkActivityManager"
PROJECT_DIR = File.expand_path("#{APP_NAME}.xcodeproj")

SDK = "iphoneos"
SCHEME = APP_NAME
CONFIGURATION = "Release"

DESTINATIONS = ["name=iPhone,OS=6.1",
                "name=iPhone Retina (3.5-inch),OS=6.1",
                "name=iPhone Retina (3.5-inch),OS=7.0",
                "name=iPhone Retina (3.5-inch),OS=7.1",
                "name=iPhone Retina (4-inch),OS=6.1",
                "name=iPhone Retina (4-inch),OS=7.0",
                "name=iPhone Retina (4-inch),OS=7.1",
                "name=iPhone Retina (4-inch 64-bit),OS=7.0",
                "name=iPhone Retina (4-inch 64-bit),OS=7.1"]

task :default => [:build]

task :test do
  DESTINATIONS.each do |destination|
    sh "xctool -project #{PROJECT_DIR} -sdk iphonesimulator -scheme #{SCHEME} -configuration Debug -destination '#{destination}' test"
  end
end

desc "Build"
task :build do
  DESTINATIONS.each do |destination|
    sh "xctool -project #{PROJECT_DIR} -sdk iphonesimulator -scheme #{SCHEME} -configuration Debug -destination '#{destination}' clean build"
  end
end

desc "Clean"
task :clean do
    sh "xcodebuild -project #{PROJECT_DIR} clean"
end
