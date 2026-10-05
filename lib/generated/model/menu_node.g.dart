// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuNode extends MenuNode {
  @override
  final String id;
  @override
  final String label;
  @override
  final String? path;
  @override
  final String? icon;
  @override
  final BuiltList<MenuNode>? children;

  factory _$MenuNode([void Function(MenuNodeBuilder)? updates]) =>
      (MenuNodeBuilder()..update(updates))._build();

  _$MenuNode._({
    required this.id,
    required this.label,
    this.path,
    this.icon,
    this.children,
  }) : super._();
  @override
  MenuNode rebuild(void Function(MenuNodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuNodeBuilder toBuilder() => MenuNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuNode &&
        id == other.id &&
        label == other.label &&
        path == other.path &&
        icon == other.icon &&
        children == other.children;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, children.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuNode')
          ..add('id', id)
          ..add('label', label)
          ..add('path', path)
          ..add('icon', icon)
          ..add('children', children))
        .toString();
  }
}

class MenuNodeBuilder implements Builder<MenuNode, MenuNodeBuilder> {
  _$MenuNode? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  ListBuilder<MenuNode>? _children;
  ListBuilder<MenuNode> get children =>
      _$this._children ??= ListBuilder<MenuNode>();
  set children(ListBuilder<MenuNode>? children) => _$this._children = children;

  MenuNodeBuilder() {
    MenuNode._defaults(this);
  }

  MenuNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _path = $v.path;
      _icon = $v.icon;
      _children = $v.children?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuNode other) {
    _$v = other as _$MenuNode;
  }

  @override
  void update(void Function(MenuNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuNode build() => _build();

  _$MenuNode _build() {
    _$MenuNode _$result;
    try {
      _$result =
          _$v ??
          _$MenuNode._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'MenuNode', 'id'),
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'MenuNode',
              'label',
            ),
            path: path,
            icon: icon,
            children: _children?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'children';
        _children?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MenuNode',
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
