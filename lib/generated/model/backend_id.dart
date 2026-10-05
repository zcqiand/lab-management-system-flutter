//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backend_id.g.dart';

/// 已废弃 (ADR-0014);3 个槽位,id 锁定避免拼写漂移。msw 成员 2026-09-17 随 msw 仓剔除删除
class BackendId extends EnumClass {
  @BuiltValueEnumConst(wireName: r'nextjs')
  static const BackendId nextjs = _$nextjs;
  @BuiltValueEnumConst(wireName: r'springboot')
  static const BackendId springboot = _$springboot;
  @BuiltValueEnumConst(wireName: r'aspnetcore')
  static const BackendId aspnetcore = _$aspnetcore;

  static Serializer<BackendId> get serializer => _$backendIdSerializer;

  const BackendId._(String name) : super(name);

  static BuiltSet<BackendId> get values => _$values;
  static BackendId valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
