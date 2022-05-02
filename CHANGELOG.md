# Changelog

## 6.0.0 / 2022-05-2

- **Breaking change:** Rename `AbsolutelyError` to `Error` (efcd8fa)
- Remove Reek (0d73600)
- Update Addressable dependency constraint (5faefa9)
- **Breaking change:** Set minimum supported Ruby to 2.6 (b888d5e)
- Update development Ruby to 2.6.10 (b84d268)

## 5.1.0 / 2021-04-02

- Expand supported Ruby versions to include 3.0 (c9741de)

## 5.0.0 / 2020-08-23

- **Breaking change:** Update minimum supported Ruby version to 2.5 (866cec3)
- Update project Ruby version to 2.5.8 (231653b)

## 4.0.0 / 2020-05-13

- **Breaking Change:** Remove alias from `to_absolute_uri` to `to_abs` (b4df234)
- Improve inline documentation and refactor gem code (bb0456e)
- Move development dependencies to Gemfile per current Bundler convention (3c2f579)
- Update development Ruby version to 2.4.10 (6c79003)

## 3.1.0 / 2020-01-20

- Expand supported Ruby versions to include 2.7 (e0273b5)

## 3.0.1 / 2019-08-31

- Update Addressable gem (b257f75)
- Update project Ruby version to 2.4.9 (a14d29b)
- Update development dependencies

## 3.0.0 / 2019-05-28

- Return normalized `relative_uri` in `to_abs` when `relative_uri` is an absolute URL (81261e9)

## 2.1.0 / 2019-05-01

- Rename `to_absolute_uri` method to `to_abs` (d14e33f)
- Add `inspect` instance method to `Absolutely::URI` (e4e7e5a)

## 2.0.0 / 2019-04-25

- The `URI` class' `base` and `relative` methods are now read-only (7879f78)
- Add Reek and configuration (fb60f9c)

## 1.1.2 / 2019-01-03

- Expand supported Ruby versions to include 2.6 (866d58a)

## 1.1.1 / 2018-11-11

- Liberalizes dependency constraints (e0bc056)

## 1.1.0 / 2018-07-05

- Sets `base` URI's path to `/` if empty to conform with browser behavior (b0f657a)
- Adds new tests from the [indieweb/php-mf2 URL test suite](https://github.com/indieweb/php-mf2/blob/master/tests/Mf2/URLTest.php) (0b6417b)

## 1.0.0 / 2018-07-05

- **Breaking Change:** Return value passed as `relative` if `relative` is to determined to be an absolute URI, regardless of the value passed as `base` (e3996eb)
- Updates documentation to demonstrate new `relative` parameter behavior

## 0.1.0 / 2018-07-04

- Initial release!
