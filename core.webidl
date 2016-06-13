[PrimaryGlobal]
interface Window {};

[Constructor]
interface Object {
  getter any (String propertyName);
  setter void (String propertyName, any value);
  static Array keys(Object o);

  serializer;
};

[Constructor, NativeOperator=Plus, NativeOperator=Equals]
interface String {
  static String fromCharCode(optional Number char1);
  String toString();
  String valueOf();
  String charAt(any position);
  Number charCodeAt(any position);
  String concat(optional any string1);
  Number indexOf(optional any searchString, optional any position);
  Number lastIndexOf(optional any searchString, optional any position);
  Number localeCompare(any that);
  Array match(RegExp pattern);
  String replace(any pattern, any replacement);
  Number search(RegExp pattern);
  String slice(any start, any end);
  Array split(any separator, optional Number limit);
  String substring(any start, any end);
  String toLowerCase();
  String toLocaleLowerCase();
  String toUpperCase();
  String toLocaleUpperCase();
  String trim();
  readonly attribute Number length;

  serializer;
};

[Constructor(any value), NativeOperator=Equals]
interface Boolean {
  String toString();

  serializer;
};

[Constructor(optional any value),
 NativeOperator=Plus, NativeOperator=Minus, NativeOperator=Times,
 NativeOperator=Div, NativeOperator=Mod, NativeOperator=Equals]
interface Number {
  static readonly attribute Number MAX_VALUE;
  static readonly attribute Number MIN_VALUE;
  static readonly attribute Number NaN;
  static readonly attribute Number NEGATIVE_INFINITY;
  static readonly attribute Number POSITIVE_INFINITY;
  String toString();
  String toLocaleString();
  Number valueOf();
  String toFixed(any fractionDigits);
  String toExponential(any fractionDigits);
  String toPrecision(any precision);

  serializer;
};

[Constructor]
interface Array {
  static Boolean isArray(any x);
  String toString();
  String toLocaleString();
  Array concat(optional any item1);
  String join(any separator);
  Array pop();
  Array push(optional any item1);
  Array reverse();
  any shift();
  Array slice(any start, any end);
  Array sort(any comparator);
  Array splice(any start, any deleteCount, optional any item1);
  Number unshift(optional any item1);
  Number indexOf(any searchElement, optional Number fromIndex);
  Number lastIndexOf(any searchElement, optional Number fromIndex);
  Boolean every(any predicator, any this);
  Boolean some(any predicator, any this);
  void forEach(any iterator, any this);
  Array map(any iterator, any this);
  Array filter(any predicator, any this);
  any reduce(any reductor, optional any initial);
  any reduceRight(any reductor, optional any initial);
  attribute Number length;

  getter any (Number index);
  setter void (Number index, any value);

  serializer;
};

[Constructor(any pattern, any flags)]
interface RegExp {
  readonly attribute String source;
  readonly attribute Boolean global;
  readonly attribute Boolean ignoreCase;
  readonly attribute Boolean multiline;
  attribute Number lastIndex;
  Array exec(any string);
  Boolean test(any string);
  String toString();
};

[Constructor]
interface Function {
  void call(any thisArg);
};

[Constructor]
interface Function1 {
  void call(any thisArg, any arg1);
};

[Constructor]
interface Function2 {
  void call(any thisArg, any arg1, any arg2);
};

[NoInterfaceObject]
interface JSON {
  static Object parse(any text, optional any reviver);
  static String stringify(any value, optional any replacer, optional any space);
};

interface Math {
  static Number floor(Number value);
  static Number ceil(Number value);
  static Number round(Number value);
};