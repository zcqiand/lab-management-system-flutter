// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_action_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlowActionRequest extends FlowActionRequest {
  @override
  final BuiltList<String> ids;
  @override
  final FlowAction action;
  @override
  final String operator_;
  @override
  final String? reason;

  factory _$FlowActionRequest([
    void Function(FlowActionRequestBuilder)? updates,
  ]) => (FlowActionRequestBuilder()..update(updates))._build();

  _$FlowActionRequest._({
    required this.ids,
    required this.action,
    required this.operator_,
    this.reason,
  }) : super._();
  @override
  FlowActionRequest rebuild(void Function(FlowActionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowActionRequestBuilder toBuilder() =>
      FlowActionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowActionRequest &&
        ids == other.ids &&
        action == other.action &&
        operator_ == other.operator_ &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowActionRequest')
          ..add('ids', ids)
          ..add('action', action)
          ..add('operator_', operator_)
          ..add('reason', reason))
        .toString();
  }
}

class FlowActionRequestBuilder
    implements Builder<FlowActionRequest, FlowActionRequestBuilder> {
  _$FlowActionRequest? _$v;

  ListBuilder<String>? _ids;
  ListBuilder<String> get ids => _$this._ids ??= ListBuilder<String>();
  set ids(ListBuilder<String>? ids) => _$this._ids = ids;

  FlowAction? _action;
  FlowAction? get action => _$this._action;
  set action(FlowAction? action) => _$this._action = action;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  FlowActionRequestBuilder() {
    FlowActionRequest._defaults(this);
  }

  FlowActionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids.toBuilder();
      _action = $v.action;
      _operator_ = $v.operator_;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowActionRequest other) {
    _$v = other as _$FlowActionRequest;
  }

  @override
  void update(void Function(FlowActionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowActionRequest build() => _build();

  _$FlowActionRequest _build() {
    _$FlowActionRequest _$result;
    try {
      _$result =
          _$v ??
          _$FlowActionRequest._(
            ids: ids.build(),
            action: BuiltValueNullFieldError.checkNotNull(
              action,
              r'FlowActionRequest',
              'action',
            ),
            operator_: BuiltValueNullFieldError.checkNotNull(
              operator_,
              r'FlowActionRequest',
              'operator_',
            ),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        ids.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FlowActionRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
