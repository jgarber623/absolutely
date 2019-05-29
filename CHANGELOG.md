# Changelog

## 3.0.0 / 2019-05-28

- Return normalized `relative_uri` in `to_abs` when `relative_uri` is an absolute URL ([81261e9](https://github.com/jgarber623/absolutely/commit/81261e9)).

## 2.1.0 / 2019-05-01

- Rename `to_absolute_uri` method to `to_abs` ([d14e33f](https://github.com/jgarber623/absolutely/commit/d14e33f)).
- Add `inspect` instance method to `Absolutely::URI` ([e4e7e5a](https://github.com/jgarber623/absolutely/commit/e4e7e5a)).

## 2.0.0 / 2019-04-25

- The `URI` class' `base` and `relative` methods are now read-only ([7879f78](https://github.com/jgarber623/absolutely/commit/7879f78)).
- Add Reek and configuration ([fb60f9c](https://github.com/jgarber623/absolutely/commit/fb60f9c)).

## 1.1.2 / 2019-01-03

- Expand supported Ruby versions to include 2.6 ([866d58a](https://github.com/jgarber623/absolutely/commit/866d58a)).

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
