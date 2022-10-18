// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'untitled.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQuality _$AirQualityFromJson(Map<String, dynamic> json) => AirQuality(
      features: (json['features'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Features.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$FeatureTypeEnumMap, json['type']),
      quality: json['quality'] == null
          ? null
          : Quality.fromJson(json['quality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityToJson(AirQuality instance) =>
    <String, dynamic>{
      'features': instance.features,
      'type': _$FeatureTypeEnumMap[instance.type],
      'quality': instance.quality,
    };

const _$FeatureTypeEnumMap = {
  FeatureType.Feature: 'Feature',
  FeatureType.FeatureCollection: 'FeatureCollection',
};

Quality _$QualityFromJson(Map<String, dynamic> json) => Quality(
      level: json['level'] as String?,
      pm10: json['pm10'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      windDirection: json['windDirection'] as String?,
      pressure: json['pressure'] as String?,
      windSpeed: json['windSpeed'] as String?,
      status: json['status'] as String?,
      featuresList: (json['featuresList'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FeatureList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QualityToJson(Quality instance) => <String, dynamic>{
      'level': instance.level,
      'pm10': instance.pm10,
      'icon': instance.icon,
      'description': instance.description,
      'windDirection': instance.windDirection,
      'pressure': instance.pressure,
      'windSpeed': instance.windSpeed,
      'status': instance.status,
      'featuresList': instance.featuresList,
    };

FeatureList _$FeatureListFromJson(Map<String, dynamic> json) => FeatureList(
      key1: json['key1'] as String?,
      key2: json['key2'] as String?,
      key3: (json['key3'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$FeatureListToJson(FeatureList instance) =>
    <String, dynamic>{
      'key1': instance.key1,
      'key2': instance.key2,
      'key3': instance.key3,
    };

Features _$FeaturesFromJson(Map<String, dynamic> json) => Features(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      id: json['id'] as int?,
      type: $enumDecodeNullable(_$FeatureTypeEnumMap, json['type']),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeaturesToJson(Features instance) => <String, dynamic>{
      'geometry': instance.geometry,
      'id': instance.id,
      'type': _$FeatureTypeEnumMap[instance.type],
      'properties': instance.properties,
    };

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry(
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
    };

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      title: json['title'] as String?,
      temperature2m: json['temperature2m'] == null
          ? null
          : Interval.fromJson(json['temperature2m'] as Map<String, dynamic>),
      humidity: json['humidity'] == null
          ? null
          : Interval.fromJson(json['humidity'] as Map<String, dynamic>),
      pressure: json['pressure'] == null
          ? null
          : Interval.fromJson(json['pressure'] as Map<String, dynamic>),
      windDirection: json['windDirection'] == null
          ? null
          : Interval.fromJson(json['windDirection'] as Map<String, dynamic>),
      windSpeed: json['windSpeed'] == null
          ? null
          : Interval.fromJson(json['windSpeed'] as Map<String, dynamic>),
      pm25: json['pm2.5'] == null
          ? null
          : Particle.fromJson(json['pm2.5'] as Map<String, dynamic>),
      no2: json['no2'] == null
          ? null
          : Particle.fromJson(json['no2'] as Map<String, dynamic>),
      o3: json['o3'] == null
          ? null
          : Particle.fromJson(json['o3'] as Map<String, dynamic>),
      bzn: json['bzn'] == null
          ? null
          : Particle.fromJson(json['bzn'] as Map<String, dynamic>),
      so2: json['so2'] == null
          ? null
          : Particle.fromJson(json['so2'] as Map<String, dynamic>),
      pm10: json['pm10'] == null
          ? null
          : Particle.fromJson(json['pm10'] as Map<String, dynamic>),
      co: json['co'] == null
          ? null
          : Particle.fromJson(json['co'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'title': instance.title,
      'temperature2m': instance.temperature2m,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'windDirection': instance.windDirection,
      'windSpeed': instance.windSpeed,
      'pm2.5': instance.pm25,
      'no2': instance.no2,
      'o3': instance.o3,
      'bzn': instance.bzn,
      'so2': instance.so2,
      'pm10': instance.pm10,
      'co': instance.co,
    };

Interval _$IntervalFromJson(Map<String, dynamic> json) => Interval(
      ts10min: json['ts10min'] == null
          ? null
          : Measurement.fromJson(json['ts10min'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
      'ts10min': instance.ts10min,
    };

Particle _$ParticleFromJson(Map<String, dynamic> json) => Particle(
      a1h: json['A1h'] == null
          ? null
          : Measurement.fromJson(json['A1h'] as Map<String, dynamic>),
      sA8h: json['sA8h'] == null
          ? null
          : Measurement.fromJson(json['sA8h'] as Map<String, dynamic>),
      dAw24h: json['dAw24h'] == null
          ? null
          : Measurement.fromJson(json['dAw24h'] as Map<String, dynamic>),
      dAc24h: json['dAc24h'] == null
          ? null
          : Measurement.fromJson(json['dAc24h'] as Map<String, dynamic>),
      sA24h: json['sA24h'] == null
          ? null
          : Measurement.fromJson(json['sA24h'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParticleToJson(Particle instance) => <String, dynamic>{
      'A1h': instance.a1h,
      'sA8h': instance.sA8h,
      'dAw24h': instance.dAw24h,
      'dAc24h': instance.dAc24h,
      'sA24h': instance.sA24h,
    };

Measurement _$MeasurementFromJson(Map<String, dynamic> json) => Measurement(
      exceeded: json['exceeded'] as String?,
      trend: json['trend'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$MeasurementToJson(Measurement instance) =>
    <String, dynamic>{
      'exceeded': instance.exceeded,
      'trend': instance.trend,
      'value': instance.value,
    };
