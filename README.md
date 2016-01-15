# Pure Admin Autocomplete Input

## Installation

Add these lines to your Gemfile

```
gem 'select2-rails'
gem 'pure-admin-rails-autocomplete'
```

Add these lines to application.scss.css

```
*= require select2
*= require pure_admin/inputs/autocomplete
```

Add these lines to application.scss.css

```
//= require select2
//= require pure_admin/inputs/autocomplete
```

## Usage
Simple use the `:autocomplete` type when writing a field in SimpleForm.

```erb
<%= f.association :location, as: :autocomplete %>
```
