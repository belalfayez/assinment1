abstract class _MyUtils {
   List<int> _insertionSort(List<int> list);

   List<int> _quicksortNaive<int extends Comparable<dynamic>>(
      List<int> list,);
}

class UtilsImplementation extends _MyUtils {
  @override
  List<int> _insertionSort(List<int> list) {
    for (int j = 1; j < list.length; j++) {
      int key = list[j];

      int i = j - 1;

      while (i >= 0 && list[i] > key) {
        list[i + 1] = list[i];
        i = i - 1;
        list[i + 1] = key ;
      }
    }
    return list;
  }

  @override
  List<int> _quicksortNaive<int extends Comparable>(List<int> list) {
    // 1
    if (list.length < 2) return list;
    // 2
    final pivot = list[0];
    // 3
    final less = list.where(
          (value) => value.compareTo(pivot) < 0,
    );
    final equal = list.where(
          (value) => value.compareTo(pivot) == 0,
    );
    final greater = list.where(
          (value) => value.compareTo(pivot) > 0,
    );
    // 4
    return [
      ..._quicksortNaive(less.toList()),
      ...equal,
      ..._quicksortNaive(greater.toList()),
    ];
  }


  // When a list has less then [:_INSERTION_SORT_THRESHOLD:] elements it will
  // be sorted by an insertion sort.
  static const int INSERTION_SORT_THRESHOLD = 32;

  void doSort<E>(
      List<int> a) {
    if ((a.length) <= INSERTION_SORT_THRESHOLD) {
      _insertionSort(a);
    } else {
      _quicksortNaive(a);
    }
  }

}

/*
* List<int> insertionSort(List<int> list) {
  for (int j = 1; j < list.length; j++) {
    int key = list[j];

    int i = j - 1;

    while (i >= 0 && list[i] > key) {
      list[i + 1] = list[i];
      i = i - 1;
      list[i + 1] = key;
    }
  }
  return list;
}

List<E> quicksortNaive<E extends Comparable<dynamic>>(
    List<E> list,
    ) {
  // 1
  if (list.length < 2) return list;
  // 2
  final pivot = list[0];
  // 3
  final less = list.where(
        (value) => value.compareTo(pivot) < 0,
  );
  final equal = list.where(
        (value) => value.compareTo(pivot) == 0,
  );
  final greater = list.where(
        (value) => value.compareTo(pivot) > 0,
  );
  // 4
  return [
    ...quicksortNaive(less.toList()),
    ...equal,
    ...quicksortNaive(greater.toList()),
  ];
}
* */