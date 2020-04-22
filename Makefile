build_android:
	flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi

run_build_runner:
	flutter packages pub run build_runner watch --delete-conflicting-outputs