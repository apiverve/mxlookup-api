# MX Lookup API - PHP Package

MX Lookup queries DNS to find MX records for any domain. It returns an array of mail exchange hostnames and their priority routing values in real time.

## Installation

Install via Composer:

```bash
composer require apiverve/mxlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Mxlookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['domain' => 'yahoo.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Mxlookup\Client;
use APIVerve\Mxlookup\Exceptions\APIException;
use APIVerve\Mxlookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'yahoo.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/mxlookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/mxlookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/mxlookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
