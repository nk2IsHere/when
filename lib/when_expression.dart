///
/// A case-part typedef of when™ expression
///
typedef WhenTCase<T> = bool Function(T);
///
/// A then-part typedef of when™ expression
///
typedef WhenTThen<T, R> = R Function(T);

///
/// A when™ generator of when™ expression
/// RTFM!!!
/// 
/// final myWhenStatement = when<int, String>({
///   //WhenTCase  : //WhenTThen
///   (v) => v == 1: (_) => "a",
///   (v) => true: (_) => "you're a failure"
/// });
///
R Function(T) when<T, R>(Map<WhenTCase<T>, WhenTThen<T, R>> cases) =>
  (t) {
    for(final caseThen in cases.entries)
      if(caseThen.key(t))
        return caseThen.value(t);
    return null;
  };