coverage-run:
	@flutter test --coverage && genhtml -o coverage coverage/lcov.info && open coverage/index.html

clean:
	@flutter clean; rm -rf pubspec.lock; rm -rf ../../../../.pub-cache; flutter pub get;

run-dev:
	flutter run --flavor dev -t lib/app/main-dev.dart

run-qa:
	flutter run --flavor qa -t lib/app/main-qa.dart

run-prod:
	flutter run --flavor prod -t lib/app/main-prod.dart