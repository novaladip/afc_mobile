build-android:
	flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi

run-injectable:
	flutter packages pub run build_runner build watch --delete-conflicting-outputs