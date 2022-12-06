msbuild = "/Library/Frameworks/Mono.framework/Versions/Current/Commands/msbuild"
xsp4 = "/Library/Frameworks/Mono.framework/Versions/Current/Commands/xsp4"

restore:
	$(msbuild) ./ExampleWebsite.sln /t:restore /p:RestorePackagesConfig=true
build: restore
	$(msbuild) ./ExampleWebsite.sln
run_web: build
	$(xsp4) --verbose --applications=/:./ExampleWebsite
