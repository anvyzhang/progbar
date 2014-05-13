Progbar
=======

Progress bar for array iteration.

## Features

Print a progress bar when do a iterate on a ruby array using `prog_each`

## Usage

### Install

```bash
gem install progbar
```

or add


```
gem 'progbar'
```

to your Gemfile and `bundle install`


```ruby
[1,2,3,4,5,6].prog_each{|x| sleep 1} # 'sleep 1' was optional, just a example
```

```ruby
[####################------------------------] 50% [00:00:04 left]
```

## Copyright
MIT-LICENSE
