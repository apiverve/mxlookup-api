# MX Lookup API - Dart/Flutter Client

MX Lookup queries DNS to find MX records for any domain. It returns an array of mail exchange hostnames and their priority routing values in real time.

[![pub package](https://img.shields.io/pub/v/apiverve_mxlookup.svg)](https://pub.dev/packages/apiverve_mxlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [MX Lookup API](https://apiverve.com/marketplace/mxlookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_mxlookup: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_mxlookup/apiverve_mxlookup.dart';

void main() async {
  final client = MxlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'domain': 'yahoo.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "yahoo.com",
    "mx": [
      {
        "priority": 1,
        "exchange": "mta6.am0.yahoodns.net",
        "ips": [
          "67.195.204.73",
          "67.195.228.110",
          "98.136.96.91",
          "67.195.228.106",
          "67.195.204.77",
          "67.195.228.94",
          "67.195.204.74",
          "67.195.204.72"
        ],
        "reverseDns": "mtaproxy4.free.mail.vip.bf1.yahoo.com",
        "reverseDnsConfirmed": true
      },
      {
        "priority": 1,
        "exchange": "mta7.am0.yahoodns.net",
        "ips": [
          "67.195.204.72",
          "98.136.96.74",
          "67.195.204.74",
          "98.136.96.91",
          "67.195.204.73",
          "98.136.96.76",
          "67.195.228.110",
          "67.195.228.94"
        ],
        "reverseDns": "mtaproxy3.free.mail.vip.bf1.yahoo.com",
        "reverseDnsConfirmed": true
      },
      {
        "priority": 1,
        "exchange": "mta5.am0.yahoodns.net",
        "ips": [
          "67.195.204.79",
          "67.195.228.94",
          "67.195.228.109",
          "67.195.228.110",
          "98.136.96.76",
          "67.195.204.72",
          "67.195.204.74",
          "67.195.204.77"
        ],
        "reverseDns": "mtaproxy2.free.mail.vip.bf1.yahoo.com",
        "reverseDnsConfirmed": true
      }
    ],
    "acceptsMail": true,
    "isNullMx": false,
    "provider": "Yahoo",
    "isSecurityGateway": false,
    "ttl": 503
  }
}
```

## API Reference

- **API Home:** [MX Lookup API](https://apiverve.com/marketplace/mxlookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/mxlookup](https://docs.apiverve.com/ref/mxlookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
