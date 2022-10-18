import 'dart:convert';
import 'dart:io';
import 'package:json_annotation/json_annotation.dart';

part "untitled.g.dart";

void main() {
  var airQuality = {
    "features":[
      {
        "geometry":{
          "coordinates":[
            0.3,
            0.9
          ]
        },
        "id":2,
        "type":"Feature",
        "properties":{
          "pm2.5":{
            "A1h":{
              "exceeded":"",
              "trend":"1",
              "value":"11.5041"
            }
          },
          "no2":{
            "A1h":{
              "exceeded":"",
              "trend":"1",
              "value":"47.6375"
            }
          },
          "o3":{
            "A1h":{
              "exceeded":"",
              "trend":"-1",
              "value":"9.475"
            },
            "sA8h":{
              "exceeded":"5",
              "trend":"-1",
              "value":"21"
            }
          },
          "bzn":{
            "A1h":{
              "exceeded":"",
              "trend":"-1",
              "value":"0.03477"
            }
          },
          "so2":{
            "dAw24h":{
              "exceeded":"",
              "trend":"",
              "value":"5.199"
            },
            "dAc24h":{
              "exceeded":"",
              "trend":"",
              "value":"5.199"
            },
            "A1h":{
              "exceeded":"",
              "trend":"-1",
              "value":"4.15256"
            },
            "sA24h":{
              "exceeded":"",
              "trend":"0",
              "value":"6"
            }
          },
          "pm10":{
            "dAw24h":{
              "exceeded":"",
              "trend":"",
              "value":"15.93613"
            },
            "dAc24h":{
              "exceeded":"",
              "trend":"",
              "value":"15.93613"
            },
            "A1h":{
              "exceeded":"",
              "trend":"1",
              "value":"14.1175"
            },
            "sA24h":{
              "exceeded":"19",
              "trend":"0",
              "value":"15"
            }
          },
          "title":"Dąbrowskiego",
          "co":{
            "A1h":{
              "exceeded":"",
              "trend":"1",
              "value":"495.51"
            },
            "sA8h":{
              "exceeded":"",
              "trend":"1",
              "value":"454"
            }
          }
        }
      },
      {
        "geometry":{
          "coordinates":[
            0,
            0
          ]
        },
        "id":-1,
        "type":"Feature",
        "properties":{
          "temperature.2m":{
            "TS10min":{
              "exceeded":"",
              "trend":"1",
              "value":"15.3"
            }
          },
          "humidity":{
            "TS10min":{
              "exceeded":"",
              "trend":"-1",
              "value":"82"
            }
          },
          "pressure":{
            "TS10min":{
              "exceeded":"",
              "trend":"1",
              "value":"1015"
            }
          },
          "windDirection":{
            "TS10min":{
              "value":"220"
            }
          },
          "title":"CBPIO",
          "windSpeed":{
            "TS10min":{
              "value":"3"
            }
          }
        }
      }
    ],
    "type":"FeatureCollection",
    "quality":{
      "level":"1",
      "pm10":"14",
      "icon":"https://www.poznan.pl/mim/wspolne/wos/powietrze/level1.svg",
      "description":"Jakość powietrza bardzo dobra.",
      "windDirection":"220",
      "pressure":"1015",
      "windSpeed":"3",
      "status":"Bardzo niski",
      "featuresList": [
        {
          "key1": "23",
          "key2": "44",
          "key3": [
            09,
            93,
            123,
            1009
          ]
        }
      ]
    }
  };

  final parsedAirQuality= jsonDecode(jsonEncode(airQuality));
  AirQuality? airQualitySerialised = AirQuality.fromJson(parsedAirQuality);

  // Wyświetl w konsoli wartości pól:

  // a) pm10
  print(parsedAirQuality['quality']['pm10']);
  print(airQualitySerialised.quality?.pm10 ?? "no data");

  // b) pm2.5

  print(parsedAirQuality['features'][0]['properties']['pm2.5']['A1h']['value']);
  print(airQualitySerialised.features?.first?.properties?.pm25?.a1h?.value ?? "no data");


  // c) drugą koordynatę z obiektu coordinates (ta wartość 0.9)

  print(parsedAirQuality['features'][0]['geometry']['coordinates'][1]);
  print(airQualitySerialised.features?.first?.geometry?.coordinates?[1] ?? "no data");


  // d) co drugą liczbę z obiektu "key3" (czyli konkretnie 93, 1009)

  for(int i=0; i<4; i++){
    if(i%2 == 1){
      print(parsedAirQuality['quality']['featuresList'][0]['key3'][i]);
      print(airQualitySerialised.quality?.featuresList?[0]?.key3?[i]);
    }
  }


  print(airQuality['features']);


}

@JsonSerializable()
class AirQuality {
  List<Features?>? features;
  FeatureType? type;
  Quality? quality;

  AirQuality({this.features, this.type, this.quality});

  factory AirQuality.fromJson(Map<String, dynamic> json) => _$AirQualityFromJson(json);

}

@JsonSerializable()
class Quality {
  String? level;
  String? pm10;
  String? icon;
  String? description;
  String? windDirection;
  String? pressure;
  String? windSpeed;
  String? status;
  List<FeatureList?>? featuresList;


  Quality({
    this.level,
    this.pm10,
    this.icon,
    this.description,
    this.windDirection,
    this.pressure,
    this.windSpeed,
    this.status,
    this.featuresList,
  });

  factory Quality.fromJson(Map<String, dynamic> json) => _$QualityFromJson(json);


}

@JsonSerializable()
class FeatureList {
  String? key1;
  String? key2;
  List<int>? key3;

  FeatureList({this.key1,this.key2,this.key3});

  factory FeatureList.fromJson(Map<String, dynamic> json) => _$FeatureListFromJson(json);

}

@JsonSerializable()
class Features {
  Geometry? geometry;
  int? id;
  FeatureType? type;
  Properties? properties;

  Features({this.geometry,this.id, this.type, this.properties});

  factory Features.fromJson(Map<String, dynamic> json) => _$FeaturesFromJson(json);

}

@JsonSerializable()
class Geometry {
  List<double>? coordinates;

  Geometry({this.coordinates});

  factory Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);

}

@JsonSerializable()
class Properties {
  String? title;
  Interval? temperature2m;
  Interval? humidity;
  Interval? pressure;
  Interval? windDirection;
  Interval? windSpeed;
  @JsonKey(name: 'pm2.5')
  Particle? pm25;
  Particle? no2;
  Particle? o3;
  Particle? bzn;
  Particle? so2;
  Particle? pm10;
  Particle? co;

  Properties({
    this.title,
    this.temperature2m,
    this.humidity,
    this.pressure,
    this.windDirection,
    this.windSpeed,
    this.pm25,
    this.no2,
    this.o3,
    this.bzn,
    this.so2,
    this.pm10,
    this.co,
  });

  factory Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);

}

@JsonSerializable()
class Interval {
  Measurement? ts10min;

  Interval({this.ts10min});

  factory Interval.fromJson(Map<String, dynamic> json) => _$IntervalFromJson(json);

}

@JsonSerializable()
class Particle {
  @JsonKey(name: 'A1h')
  Measurement? a1h;
  Measurement? sA8h;
  Measurement? dAw24h;
  Measurement? dAc24h;
  Measurement? sA24h;

  Particle({
    this.a1h,
    this.sA8h,
    this.dAw24h,
    this.dAc24h,
    this.sA24h,
  });

  factory Particle.fromJson(Map<String, dynamic> json) => _$ParticleFromJson(json);

}

@JsonSerializable()
class Measurement {
  String? exceeded;
  String? trend;
  String? value;

  Measurement({this.exceeded,this.trend,this.value});

  factory Measurement.fromJson(Map<String, dynamic> json) => _$MeasurementFromJson(json);

}

enum FeatureType {
  Feature,
  FeatureCollection
}
