# PluckAll

Upgrade pluck to act like Rails 4. Accepts zero, one, or multiple field names.

## Installation

Add this line to your application's Gemfile:

    gem 'pluck_all',
        git: 'git@github.com:Verba/pluck_all',
        branch: 'master'

And then execute:

    $ bundle

## Usage

```ruby
Model.pluck(:id)
#=> [1, 2, 3]

Model.pluck(:id, :name)
#=> [[1, "a"], [2, "b"], [3, "c"]]

Model.pluck
# Returns an array of every field for each row
```
