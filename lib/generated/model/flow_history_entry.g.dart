// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_history_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlowHistoryEntry extends FlowHistoryEntry {
  @override
  final FlowAction action;
  @override
  final FlowStatus from;
  @override
  final FlowStatus to;
  @override
  final String operator_;
  @override
  final String at;
  @override
  final String? reason;

  factory _$FlowHistoryEntry([
    void Function(FlowHistoryEntryBuilder)? updates,
  ]) => (FlowHistoryEntryBuilder()..update(updates))._build();

  _$FlowHistoryEntry._({
    required this.action,
    required this.from,
    required this.to,
    required this.operator_,
    required this.at,
    this.reason,
  }) : super._();
  @override
  FlowHistoryEntry rebuild(void Function(FlowHistoryEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowHistoryEntryBuilder toBuilder() =>
      FlowHistoryEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowHistoryEntry &&
        action == other.action &&
        from == other.from &&
        to == other.to &&
        operator_ == other.operator_ &&
        at == other.at &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowHistoryEntry')
          ..add('action', action)
          ..add('from', from)
          ..add('to', to)
          ..add('operator_', operator_)
          ..add('at', at)
          ..add('reason', reason))
        .toString();
  }
}

class FlowHistoryEntryBuilder
    implements Builder<FlowHistoryEntry, FlowHistoryEntryBuilder> {
  _$FlowHistoryEntry? _$v;

  FlowAction? _action;
  FlowAction? get action => _$this._action;
  set action(FlowAction? action) => _$this._action = action;

  FlowStatus? _from;
  FlowStatus? get from => _$this._from;
  set from(FlowStatus? from) => _$this._from = from;

  FlowStatus? _to;
  FlowStatus? get to => _$this._to;
  set to(FlowStatus? to) => _$this._to = to;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  String? _at;
  String? get at => _$this._at;
  set at(String? at) => _$this._at = at;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  FlowHistoryEntryBuilder() {
    FlowHistoryEntry._defaults(this);
  }

  FlowHistoryEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _from = $v.from;
      _to = $v.to;
      _operator_ = $v.operator_;
      _at = $v.at;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowHistoryEntry other) {
    _$v = other as _$FlowHistoryEntry;
  }

  @override
  void update(void Function(FlowHistoryEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowHistoryEntry build() => _build();

  _$FlowHistoryEntry _build() {
    final _$result =
        _$v ??
        _$FlowHistoryEntry._(
          action: BuiltValueNullFieldError.checkNotNull(
            action,
            r'FlowHistoryEntry',
            'action',
          ),
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'FlowHistoryEntry',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'FlowHistoryEntry',
            'to',
          ),
          operator_: BuiltValueNullFieldError.checkNotNull(
            operator_,
            r'FlowHistoryEntry',
            'operator_',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'FlowHistoryEntry',
            'at',
          ),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
