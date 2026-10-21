# MX Lookup API - Ruby Gem

MX Lookup queries DNS to find MX records for any domain. It returns an array of mail exchange hostnames and their priority routing values in real time.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_mxlookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_mxlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_mxlookup'

# Initialize the client
client = APIVerve::Mxlookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ domain: "yahoo.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "yahoo.com" })
  puts response["data"]
rescue APIVerve::Mxlookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Mxlookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Mxlookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "yahoo.com",
    "mx": [
      {
        "priority": 1,
        "exchange": "mta7.am0.yahoodns.net"
      },
      {
        "priority": 1,
        "exchange": "mta6.am0.yahoodns.net"
      },
      {
        "priority": 1,
        "exchange": "mta5.am0.yahoodns.net"
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/mxlookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/mxlookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/mxlookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
