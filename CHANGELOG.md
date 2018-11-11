# Changelog

## 1.1.1 / 2018-11-11

- Liberalizes dependency constraints ([e0bc056](https://github.com/jgarber623/absolutely/commit/e0bc056)).

## 1.1.0 / 2018-07-05

- Sets `base` URI's path to `/` if empty to conform with browser behavior ([b0f657a](https://github.com/jgarber623/absolutely/commit/b0f657a)).
- Adds new tests from the [indieweb/php-mf2 URL test suite](https://github.com/indieweb/php-mf2/blob/master/tests/Mf2/URLTest.php) ([0b6417b](https://github.com/jgarber623/absolutely/commit/0b6417b)).

## 1.0.0 / 2018-07-05

- **Breaking Change:** Return value passed as `relative` if `relative` is to determined to be an absolute URI, regardless of the value passed as `base` ([e3996eb](https://github.com/jgarber623/absolutely/commit/e3996eb)).
- Updates documentation to demonstrate new `relative` parameter behavior.

## 0.1.0 / 2018-07-04

- Initial release!
