// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Homebrew App - ', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('should display recommended settings for french press', () async {
      //expect to see what coffee maker are you using
      final coffeeMakerTextFinder = find.byValueKey('coffee-maker-question');
      expect(await driver.getText(coffeeMakerTextFinder), "What coffee maker are you using?");

      //tap french press
      final frenchPressBtnFinder = find.byValueKey('french-press-button');
      await driver.tap(frenchPressBtnFinder);

      //tap continue
      final continueBtnFinder = find.byValueKey('continue-button');
      await driver.tap(continueBtnFinder);

      //expect to see how many cups would you like
      final cupsQuestionFinder = find.byValueKey('cups-question');
      expect(await driver.getText(cupsQuestionFinder), "How many cups would you like?");

      //tap text field
      final cupsTextField = find.byValueKey('cups-text-field');
      await driver.tap(cupsTextField);

      //enter 5
      await driver.enterText('5');

      //tap continue
      final continueBtn2Finder = find.byValueKey('continue-button-2');
      await driver.tap(continueBtn2Finder);

      //expect to see recommended settings
      final recommendedTextFinder = find.byValueKey('recommended-text');
      expect(await driver.getText(recommendedTextFinder), "Recommended");

      //tap done
      final doneButtonFinder = find.byValueKey('done-button');
      await driver.tap(doneButtonFinder);

      //expect to see coffee maker selection screen
      final coffeeMaker2TextFinder = find.byValueKey('coffee-maker-question');
      expect(await driver.getText(coffeeMaker2TextFinder), "What coffee maker are you using?");

    });

    test('should display settings for drip machine', () async {
      //expect to see what coffee maker are you using
      final coffeeMakerTextFinder = find.byValueKey('coffee-maker-question');
      expect(await driver.getText(coffeeMakerTextFinder), "What coffee maker are you using?");

      //tap french press
      final dripMachineBtnFinder = find.byValueKey('drip-machine-button');
      await driver.tap(dripMachineBtnFinder);

      //tap continue
      final continueBtnFinder = find.byValueKey('continue-button');
      await driver.tap(continueBtnFinder);

      //expect to see how many cups would you like
      final cupsQuestionFinder = find.byValueKey('cups-question');
      expect(await driver.getText(cupsQuestionFinder), "How many cups would you like?");

      //tap text field
      final cupsTextField = find.byValueKey('cups-text-field');
      await driver.tap(cupsTextField);

      //enter 5
      await driver.enterText('5');

      //tap continue
      final continueBtn2Finder = find.byValueKey('continue-button-2');
      await driver.tap(continueBtn2Finder);

      //expect to see recommended settings
      final recommendedTextFinder = find.byValueKey('recommended-text');
      expect(await driver.getText(recommendedTextFinder), "Recommended");

      //tap done
      final doneButtonFinder = find.byValueKey('done-button');
      await driver.tap(doneButtonFinder);

      //expect to see coffee maker selection screen
      final coffeeMaker2TextFinder = find.byValueKey('coffee-maker-question');
      expect(await driver.getText(coffeeMaker2TextFinder), "What coffee maker are you using?");
    });



  });
}