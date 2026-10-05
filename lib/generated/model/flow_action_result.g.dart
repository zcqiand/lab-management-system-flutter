// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_action_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlowActionResult extends FlowActionResult {
  @override
  final String id;
  @override
  final bool ok;
  @override
  final String? message;
  @override
  final FlowStatus? flowStatus;

  factory _$FlowActionResult([
    void Function(FlowActionResultBuilder)? updates,
  ]) => (FlowActionResultBuilder()..update(updates))._build();

  _$FlowActionResult._({
    required this.id,
    required this.ok,
    this.message,
    this.flowStatus,
  }) : super._();
  @override
  FlowActionResult rebuild(void Function(FlowActionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowActionResultBuilder toBuilder() =>
      FlowActionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowActionResult &&
        id == other.id &&
        ok == other.ok &&
        message == other.message &&
        flowStatus == other.flowStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, flowStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowActionResult')
          ..add('id', id)
          ..add('ok', ok)
          ..add('message', message)
          ..add('flowStatus', flowStatus))
        .toString();
  }
}

class FlowActionResultBuilder
    implements Builder<FlowActionResult, FlowActionResultBuilder> {
  _$FlowActionResult? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  FlowStatus? _flowStatus;
  FlowStatus? get flowStatus => _$this._flowStatus;
  set flowStatus(FlowStatus? flowStatus) => _$this._flowStatus = flowStatus;

  FlowActionResultBuilder() {
    FlowActionResult._defaults(this);
  }

  FlowActionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ok = $v.ok;
      _message = $v.message;
      _flowStatus = $v.flowStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowActionResult other) {
    _$v = other as _$FlowActionResult;
  }

  @override
  void update(void Function(FlowActionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowActionResult build() => _build();

  _$FlowActionResult _build() {
    final _$result =
        _$v ??
        _$FlowActionResult._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'FlowActionResult',
            'id',
          ),
          ok: BuiltValueNullFieldError.checkNotNull(
            ok,
            r'FlowActionResult',
            'ok',
          ),
          message: message,
          flowStatus: flowStatus,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
