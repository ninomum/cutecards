class Option {
  Option({
    this.key,
    this.name,
  });

  final String key;
  final String name;
}


List<Option> options = <Option>[
  Option(
    key: 'recent',
    name: '最近', 
  ),
  Option(
    key: 'collect',
    name: '收藏', 
  ),
  Option(
    key: 'recommend',
    name: '推荐', 
  ),
  Option(
    key: 'classify',
    name: '分类', 
  ),
];