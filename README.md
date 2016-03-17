# Pure Admin Autocomplete Input

## Installation

Add these lines to your Gemfile

```
gem 'pure-admin-rails-autocomplete'
```

Add these lines to application.js

```
//= require pure_admin/inputs/autocomplete
```

## Usage
Simple use the `:autocomplete` type when writing a field in SimpleForm.

```erb
<%= f.association :location, as: :autocomplete %>
```
