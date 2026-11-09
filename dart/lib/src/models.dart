/// Response models for the MX Lookup API.

/// API Response wrapper.
class MxlookupResponse {
  final String status;
  final dynamic error;
  final MxlookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MxlookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MxlookupResponse.fromJson(Map<String, dynamic> json) => MxlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MxlookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the MX Lookup API.

class MxlookupData {
  String? domain;
  List<MxlookupDataMxItem>? mx;
  bool? acceptsMail;
  bool? isNullMx;
  String? provider;
  bool? isSecurityGateway;
  num? ttl;

  MxlookupData({
    this.domain,
    this.mx,
    this.acceptsMail,
    this.isNullMx,
    this.provider,
    this.isSecurityGateway,
    this.ttl,
  });

  factory MxlookupData.fromJson(Map<String, dynamic> json) => MxlookupData(
      domain: json['domain'],
      mx: (json['mx'] as List?)?.map((e) => MxlookupDataMxItem.fromJson(e)).toList(),
      acceptsMail: json['acceptsMail'],
      isNullMx: json['isNullMx'],
      provider: json['provider'],
      isSecurityGateway: json['isSecurityGateway'],
      ttl: json['ttl'],
    );
}

class MxlookupDataMxItem {
  num? priority;
  String? exchange;
  List<String>? ips;
  String? reverseDns;
  bool? reverseDnsConfirmed;

  MxlookupDataMxItem({
    this.priority,
    this.exchange,
    this.ips,
    this.reverseDns,
    this.reverseDnsConfirmed,
  });

  factory MxlookupDataMxItem.fromJson(Map<String, dynamic> json) => MxlookupDataMxItem(
      priority: json['priority'],
      exchange: json['exchange'],
      ips: (json['ips'] as List?)?.cast<String>(),
      reverseDns: json['reverseDns'],
      reverseDnsConfirmed: json['reverseDnsConfirmed'],
    );
}

class MxlookupRequest {
  String domain;

  MxlookupRequest({
    required this.domain,
  });

  Map<String, dynamic> toJson() => {
      'domain': domain,
    };
}
