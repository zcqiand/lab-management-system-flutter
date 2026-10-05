// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignTaskRequest extends AssignTaskRequest {
  @override
  final String? assigneeId;
  @override
  final String? assigneeName;
  @override
  final String? plannedTestDate;

  factory _$AssignTaskRequest([
    void Function(AssignTaskRequestBuilder)? updates,
  ]) => (AssignTaskRequestBuilder()..update(updates))._build();

  _$AssignTaskRequest._({
    this.assigneeId,
    this.assigneeName,
    this.plannedTestDate,
  }) : super._();
  @override
  AssignTaskRequest rebuild(void Function(AssignTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignTaskRequestBuilder toBuilder() =>
      AssignTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignTaskRequest &&
        assigneeId == other.assigneeId &&
        assigneeName == other.assigneeName &&
        plannedTestDate == other.plannedTestDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assigneeId.hashCode);
    _$hash = $jc(_$hash, assigneeName.hashCode);
    _$hash = $jc(_$hash, plannedTestDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssignTaskRequest')
          ..add('assigneeId', assigneeId)
          ..add('assigneeName', assigneeName)
          ..add('plannedTestDate', plannedTestDate))
        .toString();
  }
}

class AssignTaskRequestBuilder
    implements Builder<AssignTaskRequest, AssignTaskRequestBuilder> {
  _$AssignTaskRequest? _$v;

  String? _assigneeId;
  String? get assigneeId => _$this._assigneeId;
  set assigneeId(String? assigneeId) => _$this._assigneeId = assigneeId;

  String? _assigneeName;
  String? get assigneeName => _$this._assigneeName;
  set assigneeName(String? assigneeName) => _$this._assigneeName = assigneeName;

  String? _plannedTestDate;
  String? get plannedTestDate => _$this._plannedTestDate;
  set plannedTestDate(String? plannedTestDate) =>
      _$this._plannedTestDate = plannedTestDate;

  AssignTaskRequestBuilder() {
    AssignTaskRequest._defaults(this);
  }

  AssignTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assigneeId = $v.assigneeId;
      _assigneeName = $v.assigneeName;
      _plannedTestDate = $v.plannedTestDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignTaskRequest other) {
    _$v = other as _$AssignTaskRequest;
  }

  @override
  void update(void Function(AssignTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignTaskRequest build() => _build();

  _$AssignTaskRequest _build() {
    final _$result =
        _$v ??
        _$AssignTaskRequest._(
          assigneeId: assigneeId,
          assigneeName: assigneeName,
          plannedTestDate: plannedTestDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
