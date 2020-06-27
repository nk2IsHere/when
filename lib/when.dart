typedef WhenTCase<T> = bool Function(T);
typedef WhenTThen<T, R> = R Function(T);

R Function(T) when<T, R>(Map<WhenTCase<T>, WhenTThen<T, R>> cases) =>
  (t) {
    for(final caseThen in cases.entries)
      if(caseThen.key(t))
        return caseThen.value(t);
    return null;
  };