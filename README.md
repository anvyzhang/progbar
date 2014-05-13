Progbar
=======

Progress bar for array iteration.

## Features

* Print a progress bar while doing iteration on a ruby array using `prog_each`
* Print the progress in percentage and time remaining, that you can known about how long it will take to complete the iteration.

## How to use

### Install

```bash
gem install progbar
```

or add


```
gem 'progbar'
```

to your Gemfile and `bundle install`

### Code

```ruby
[1,2,3,4,5,6].prog_each{|x| sleep 1} # 'sleep 1' was optional, just an example
```

```ruby
[####################--------------------] 50% [00:00:04 left]
```

## Copyright
MIT-LICENSE
