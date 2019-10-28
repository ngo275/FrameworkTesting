mkdir build
# build framework for simulators
xcodebuild clean build \
  -project OriginalFramework.xcodeproj \
  -scheme OriginalFramework \
  -configuration Release \
  -sdk iphonesimulator \
  -derivedDataPath derived_data
# create folder to store compiled framework for simulator
mkdir build/simulator
# copy compiled framework for simulator into our build folder
cp -r derived_data/Build/Products/Release-iphonesimulator/OriginalFramework.framework build/simulator
#build framework for devices
xcodebuild clean build \
  -project OriginalFramework.xcodeproj \
  -scheme OriginalFramework \
  -configuration Release \
  -sdk iphoneos \
  -derivedDataPath derived_data
# create folder to store compiled framework for simulator
mkdir build/devices
# copy compiled framework for simulator into our build folder
cp -r derived_data/Build/Products/Release-iphoneos/OriginalFramework.framework build/devices
# create folder to store compiled universal framework
mkdir build/universal
####################### Create universal framework #############################
# copy device framework into universal folder
cp -r build/devices/OriginalFramework.framework build/universal/
# create framework binary compatible with simulators and devices, and replace binary in unviersal framework
lipo -create \
  build/simulator/OriginalFramework.framework/OriginalFramework \
  build/devices/OriginalFramework.framework/OriginalFramework \
  -output build/universal/OriginalFramework.framework/OriginalFramework
# copy simulator Swift public interface to universal framework
cp build/simulator/OriginalFramework.framework/Modules/OriginalFramework.swiftmodule/* build/universal/OriginalFramework.framework/Modules/OriginalFramework.swiftmodule
