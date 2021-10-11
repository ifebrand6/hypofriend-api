# HypofriendApi
Hypofriend Offers endpoint Consumer


A ruby gem allows  to easily integration of Hypofriend's offer API endpointf [Hypofriend](https://hypofriend.de/en).  


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hypofriend_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install 

## Basic Usage

### Get a list of new offers

```ruby

	result = HypofriendOffer.new(
        loan_amount: 35000,
         property_value: 35000,
        repayment: 1.0,
        years_fixed: 1
		)

```
NOTE: This returns a list of available finicial institutions and their burrowing  rate.

It throws a `HypofriendSaerverError` when either of the queries  are invalid or connection cannot be establish with the the Hypofriend api server.
```'