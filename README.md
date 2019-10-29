# Private Framework Sample

This repository is source code of a sample private dynamic framework (iOS). You can distribute your source code without disclosing itself to third-parties.

- Built Framework Repository: https://github.com/ngo275/OriginalFrameworkDistribution
- Cocoapods Repository: https://github.com/ngo275/OriginalFramework

You can install this library like following

```ruby
target 'YOUR_APP_TARGET' do
  use_frameworks!

  pod 'OriginalFramework', '0.1.16', source: 'https://github.com/ngo275/OriginalFramework.git'
end
```


# How to distribute

1. Build this framework; run `sh build-universal-framework.sh`.
2. Copy the built framework to the distribution repository (Built Framework Repository).
3. Add git tag to the repository; run `git tag x.y.z; git push --tags;`.
4. Update the version (in this case x.y.z) in the podspec file in Cocoapods Repository.
5. Push the podspec; run `pod repo push OriginalFramework OriginalFramework.podspec`.

Then you can install the distributed framework through Cocoapods specifying `source`.
