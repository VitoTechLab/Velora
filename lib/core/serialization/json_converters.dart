import 'package:freezed_annotation/freezed_annotation.dart';

class UtcDateTimeConverter extends JsonConverter<DateTime, Object?> {
  const UtcDateTimeConverter();

  @override
  DateTime fromJson(Object? json) {
    if (json == null) {
      return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
    }

    if (json is DateTime) {
      return json.toUtc();
    }

    final parsed = DateTime.tryParse(json.toString());
    return (parsed ?? DateTime.fromMillisecondsSinceEpoch(0, isUtc: true))
        .toUtc();
  }

  @override
  Object toJson(DateTime object) => object.toUtc().toIso8601String();
}

class StringListConverter extends JsonConverter<List<String>, Object?> {
  const StringListConverter();

  @override
  List<String> fromJson(Object? json) {
    if (json is List) {
      return json.map((e) => e.toString()).toList(growable: false);
    }
    return const [];
  }

  @override
  Object toJson(List<String> object) => object;
}

class NullableStringMapConverter
    extends JsonConverter<Map<String, dynamic>?, Object?> {
  const NullableStringMapConverter();

  @override
  Map<String, dynamic>? fromJson(Object? json) {
    if (json == null) return null;
    if (json is Map<String, dynamic>) return json;
    if (json is Map) {
      return json.map((key, value) => MapEntry(key.toString(), value));
    }
    return null;
  }

  @override
  Object? toJson(Map<String, dynamic>? object) => object;
}
