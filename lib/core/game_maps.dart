/// 맵 id → 한글 표시명. 미등록 id는 그대로 노출한다.
const Map<String, String> kMapNamesKo = {
  'starting_village': '시작의 마을',
  'forest_entrance': '숲 입구',
  'deep_forest': '깊은 숲',
  'swamp_entrance': '늪지 입구',
  'shallow_marsh': '얕은 습지',
  'ancient_ruins': '고대 유적',
  'mountain_path': '산길',
  'dark_cave': '어두운 동굴',
};

String mapNameKo(String id) => kMapNamesKo[id] ?? id;
