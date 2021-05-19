# Dart Modelを作成 with Ruby

### 1. 以下のdartファイルをプロジェクトの`root`ディレクトリに用意

```dart
class Spat {
  final int id;
  final String term;
  final int year;
  final String createdAt;
  final String updatedAt;
}
```

### 2. コマンドを実行

```bash
$ ruby coverter.rb spot.dart
```

そうすると、元々あったdartファイルが`前の名前_base.dart`ファイルに変換され、`base`ディレクトリに配置される。
そして、前にあったファイル名のファイルが以下のように書き換わってる。

```dart
class Spot {
  final int id;
  final int userId;
  final String term;
  final int year;
  final String createdAt;
  final String updatedAt;

  Spot({
    this.id, 
    this.userId, 
    this.term, 
    this.year, 
    this.createdAt, 
    this.updatedAt, 
  });

  factory Spot.fromJson(Map<String, dynamic> json) {
    return Spot(
      id: json['id'],
      userId: json['userId'],
      term: json['term'],
      year: json['year'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'term': term,
    'year': year,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };
}

```


### 注意点

コメントアウトが記載された状態だと、うまく動かない。