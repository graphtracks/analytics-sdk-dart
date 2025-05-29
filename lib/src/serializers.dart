//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:graphtracks_client/src/date_serializer.dart';
import 'package:graphtracks_client/src/model/date.dart';

import 'package:graphtracks_client/src/model/data_point.dart';
import 'package:graphtracks_client/src/model/get_global_stats_for_account_api403_response.dart';
import 'package:graphtracks_client/src/model/metric.dart';
import 'package:graphtracks_client/src/model/network.dart';
import 'package:graphtracks_client/src/model/timeframe.dart';

part 'serializers.g.dart';

@SerializersFor([
  DataPoint,
  GetGlobalStatsForAccountAPI403Response,
  Metric,
  Network,
  Timeframe,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DataPoint)]),
        () => ListBuilder<DataPoint>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
