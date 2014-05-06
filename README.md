# Hashy

When working with legacy Ruby code you sometimes run into the old Ruby 1.8
hash style, with this Atom package you can easily convert the old hash style
to the new one.

For example:

```ruby
{ :one => "first value", :two => "second value" }
```

Converts to:

```ruby
{ one: "first value", two: "second value" }
```

Please bare with me, this is my first Atom package, mainly to figure out how to
write packages for Atom. Special thanks to [@github](https://github.com/github) for open sourcing [@atom](https://github.com/atom).
