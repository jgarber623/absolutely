module ExampleURIs
  URI_TESTS = [
    # Absolutely test URIs
    ['https://example.com', '/foo', 'https://example.com/foo'],
    ['https://example.com/', '/foo', 'https://example.com/foo'],
    ['https://example.com/foo', 'bar', 'https://example.com/bar'],
    ['https://example.com/foo/', 'bar', 'https://example.com/foo/bar'],
    ['https://example.com/foo/bar', '../biz', 'https://example.com/biz'],
    ['https://example.com/foo/bar', '../../../../biz', 'https://example.com/biz'],
    ['https://example.com', '/foo?query=bar', 'https://example.com/foo?query=bar'],
    ['https://example.com', '?query=bar', 'https://example.com/?query=bar'],
    ['https://🔥💀.com', '/🚜', 'https://🔥💀.com/🚜'],
    ['https://example.com', 'https://example.com/foo', 'https://example.com/foo'],

    # php-mf2 test URIs
    ['http://example.com', 'http://example.com', 'http://example.com'],
    ['http://example.com', '', 'http://example.com/'],
    ['http://example.com/something', '', 'http://example.com/something'],
    ['http://example.com', '#thing', 'http://example.com/#thing'],
    ['http://example.com', '#', 'http://example.com/#'],
    ['http://example.com', 'thing', 'http://example.com/thing'],
    ['http://example.com', './thing', 'http://example.com/thing'],
    ['http://example.com', '../thing', 'http://example.com/thing'],
    ['http://example.com/something', 'another', 'http://example.com/another'],
    ['http://example.com/index.php?url=http://example.org', '/thing', 'http://example.com/thing'],
    ['http://example.com/thing', '?stuff=yes', 'http://example.com/thing?stuff=yes'],
    ['http://example.com', './?thing=yes', 'http://example.com/?thing=yes'],
    ['http://example.com', 'path/to/the/../file', 'http://example.com/path/to/file'],
    ['http://example.com/path/the', 'to/the/../file', 'http://example.com/path/to/file'],

    # webignition test URIs
    ['http://www.example.com', 'server.php', 'http://www.example.com/server.php'],
    ['http://:pass@www.example.com', 'server.php', 'http://:pass@www.example.com/server.php'],
    ['http://user:pass@www.example.com', 'server.php', 'http://user:pass@www.example.com/server.php'],
    ['http://example.com/index.html', 'example.html', 'http://example.com/example.html'],
    ['http://www.example.com/pathOne/pathTwo/pathThree', '/server.php?param1=value1', 'http://www.example.com/server.php?param1=value1'],
    ['http://www.example.com/', 'http://www.example.com/pathOne', 'http://www.example.com/pathOne'],
    ['http://www.example.com/pathOne/pathTwo/pathThree', 'server.php?param1=value1', 'http://www.example.com/pathOne/pathTwo/server.php?param1=value1'],
    ['http://www.example.com/pathOne/index.php', '../jquery.js', 'http://www.example.com/jquery.js'],
    ['http://www.example.com/pathOne/', '../jquery.js', 'http://www.example.com/jquery.js'],
    ['http://www.example.com/pathOne', '../jquery.js', 'http://www.example.com/jquery.js'],
    ['http://www.example.com/pathOne/index.php', './jquery.js', 'http://www.example.com/pathOne/jquery.js'],
    ['http://www.example.com/pathOne/', './jquery.js', 'http://www.example.com/pathOne/jquery.js'],
    ['http://www.example.com/pathOne', './jquery.js', 'http://www.example.com/jquery.js'],
    ['http://example.com:8080/index.html', '/photo.jpg', 'http://example.com:8080/photo.jpg']
  ].freeze
end
