# Beef.Linq

# Matching

:heavy_check_mark: `public static bool All<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static bool Any<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static bool Any<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static bool Contains<TSource>(this IEnumerable<TSource> source, TSource value);`

:heavy_check_mark: `public static bool SequenceEqual<TSource>(this IEnumerable<TSource> first, IEnumerable<TSource> second);`

# Aggregates

:heavy_check_mark: `public static TResult Average<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static TResult Max<TResult>(this IEnumerable<TResult> source);`

:heavy_check_mark: `public static TResult Max<TResult>(this IEnumerable<TResult> source, Func<TSource, TResult> predicate);`

:heavy_check_mark: `public static TResult Min<TResult>(this IEnumerable<TResult> source);`

:heavy_check_mark: `public static TResult Min<TResult>(this IEnumerable<TResult> source, Func<TSource, TResult> predicate);`

:heavy_check_mark: `public static TResult Sum<TResult>(this IEnumerable<TResult> source);`

:heavy_check_mark: `public static TResult Sum<TResult>(this IEnumerable<TResult> source, Func<TSource, TResult> predicate);`

:heavy_check_mark: `public static int Count<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static int Count<TSource>(this IEnumerable<TSource> source, Func<TSource, TResult> predicate);`

# Find in enumerable

:heavy_check_mark: `public static TSource ElementAt<TSource>(this IEnumerable<TSource> source, int index);`

:heavy_check_mark: `public static TSource ElementAtOrDefault<TSource>(this IEnumerable<TSource> source, int index);`

:heavy_check_mark: `public static TSource ElementAtOrDefault<TSource>(this IEnumerable<TSource> source, int index, TSource defaultValue);`

:heavy_check_mark: `public static TSource First<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static TSource First<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static TSource FirstOrDefault<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static TSource FirstOrDefault<TSource>(this IEnumerable<TSource> source, TSource defaultValue);`

:heavy_check_mark: `public static TSource FirstOrDefault<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static TSource FirstOrDefault<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate, TSource defaultValue);`

:heavy_check_mark: `public static TSource Last<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static TSource Last<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static TSource LastOrDefault<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static TSource LastOrDefault<TSource>(this IEnumerable<TSource> source, TSource defaultValue);`

:heavy_check_mark: `public static TSource LastOrDefault<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static TSource LastOrDefault<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate, TSource defaultValue);`

:heavy_check_mark: `public static TSource Single<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static TSource Single<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static TSource SingleOrDefault<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static TSource SingleOrDefault<TSource>(this IEnumerable<TSource> source, TSource defaultValue);`

:heavy_check_mark: `public static TSource SingleOrDefault<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static TSource SingleOrDefault<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate, TSource defaultValue);`

# Enumerable Chains

:heavy_check_mark: `public static IEnumerable<int> Range(int start, int count);`

:heavy_check_mark: `public static IEnumerable<TSource> DefaultIfEmpty<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static IEnumerable<TSource> DefaultIfEmpty<TSource>(this IEnumerable<TSource> source, TSource defaultValue);`

:heavy_check_mark: `public static IEnumerable<TSource> Distinct<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static IEnumerable<TResult> Empty<TResult>();`

:heavy_check_mark: `public static IEnumerable<TResult> Repeat<TResult>(TResult element, int count);`

:heavy_check_mark: `public static IEnumerable<TSource> Reverse<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static IEnumerable<TResult> Select<TSource, TResult>(this IEnumerable<TSource> source, Func<TSource, TResult> selector);`

:heavy_check_mark: `public static IEnumerable<TResult> Select<TSource, TResult>(this IEnumerable<TSource> source, Func<TSource, int, TResult> selector);`

:heavy_check_mark: `public static IEnumerable<TSource> Skip<TSource>(this IEnumerable<TSource> source, int count);`

:heavy_check_mark: `public static IEnumerable<TSource> SkipWhile<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static IEnumerable<TSource> Take<TSource>(this IEnumerable<TSource> source, int count);`

:heavy_check_mark: `public static IEnumerable<TSource> TakeWhile<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static IEnumerable<TSource> Where<TSource>(this IEnumerable<TSource> source, Func<TSource, bool> predicate);`

:heavy_check_mark: `public static IEnumerable<TSource> Where<TSource>(this IEnumerable<TSource> source, Func<TSource, int, bool> predicate);`

:heavy_check_mark: `public static IEnumerable<TResult> Cast<TResult>(this IEnumerable source);`

:heavy_check_mark: `public static IEnumerable<TResult> OfType<TResult>(this IEnumerable source);`

# ToXYZ

:heavy_check_mark: `public static Dictionary<TKey, TSource> ToDictionary<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector);`

:heavy_check_mark: `public static Dictionary<TKey, TElement> ToDictionary<TSource, TKey, TElement>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector, Func<TSource, TElement> elementSelector);`

:heavy_check_mark: `public static HashSet<TSource> ToHashSet<TSource>(this IEnumerable<TSource> source);`

:heavy_check_mark: `public static List<TSource> ToList<TSource>(this IEnumerable<TSource> source);`

# Aggregate

:heavy_check_mark: `public static TSource Aggregate<TSource>(this IEnumerable<TSource> source, Func<TSource, TSource, TSource> func);`

:heavy_check_mark: `public static TAccumulate Aggregate<TSource, TAccumulate>(this IEnumerable<TSource> source, TAccumulate seed, Func<TAccumulate, TSource, TAccumulate> func);`

:heavy_check_mark: `public static TResult Aggregate<TSource, TAccumulate, TResult>(this IEnumerable<TSource> source, TAccumulate seed, Func<TAccumulate, TSource, TAccumulate> func, Func<TAccumulate, TResult> resultSelector);`

# GroupBy

:heavy_check_mark: `public static IEnumerable<IGrouping<TKey, TSource>> GroupBy<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector);`

:x: `public static IEnumerable<TResult> GroupBy<TSource, TKey, TResult>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector, Func<TKey, IEnumerable<TSource>, TResult> resultSelector);`

:x: `public static IEnumerable<TResult> GroupBy<TSource, TKey, TElement, TResult>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector, Func<TSource, TElement> elementSelector, Func<TKey, IEnumerable<TElement>, TResult> resultSelector);`

:x: `public static IEnumerable<IGrouping<TKey, TElement>> GroupBy<TSource, TKey, TElement>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector, Func<TSource, TElement> elementSelector);`

:x: `public static IEnumerable<TResult> GroupJoin<TOuter, TInner, TKey, TResult>(this IEnumerable<TOuter> outer, IEnumerable<TInner> inner, Func<TOuter, TKey> outerKeySelector, Func<TInner, TKey> innerKeySelector, Func<TOuter, IEnumerable<TInner>, TResult> resultSelector);`

# Intersect

:heavy_check_mark: `public static IEnumerable<TSource> Intersect<TSource>(this IEnumerable<TSource> first, IEnumerable<TSource> second);`

# Join

:x: `public static IEnumerable<TResult> Join<TOuter, TInner, TKey, TResult>(this IEnumerable<TOuter> outer, IEnumerable<TInner> inner, Func<TOuter, TKey> outerKeySelector, Func<TInner, TKey> innerKeySelector, Func<TOuter, TInner, TResult> resultSelector);`

# ToLookup

:x: `public static ILookup<TKey, TSource> ToLookup<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector);`

:x: `public static ILookup<TKey, TElement> ToLookup<TSource, TKey, TElement>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector, Func<TSource, TElement> elementSelector);`

# Union

:heavy_check_mark: `public static IEnumerable<TSource> Union<TSource>(this IEnumerable<TSource> first, IEnumerable<TSource> second);`

# SelectMany

:x: `public static IEnumerable<TResult> SelectMany<TSource, TCollection, TResult>(this IEnumerable<TSource> source, Func<TSource, IEnumerable<TCollection>> collectionSelector, Func<TSource, TCollection, TResult> resultSelector);`

:heavy_check_mark: `public static IEnumerable<TResult> SelectMany<TSource, TResult>(this IEnumerable<TSource> source, Func<TSource, IEnumerable<TResult>> selector);`

# ThenBy

:heavy_check_mark: `public static IOrderedEnumerable<TSource> ThenBy<TSource, TKey>(this IOrderedEnumerable<TSource> source, Func<TSource, TKey> keySelector, IComparer<TKey> comparer);`

:heavy_check_mark: `public static IOrderedEnumerable<TSource> ThenBy<TSource, TKey>(this IOrderedEnumerable<TSource> source, Func<TSource, TKey> keySelector);`

:heavy_check_mark: `public static IOrderedEnumerable<TSource> ThenByDescending<TSource, TKey>(this IOrderedEnumerable<TSource> source, Func<TSource, TKey> keySelector, IComparer<TKey> comparer);`

:heavy_check_mark: `public static IOrderedEnumerable<TSource> ThenByDescending<TSource, TKey>(this IOrderedEnumerable<TSource> source, Func<TSource, TKey> keySelector);`

# OrderBy

:heavy_check_mark: `public static IOrderedEnumerable<TSource> OrderBy<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector);`

:heavy_check_mark: `public static IOrderedEnumerable<TSource> OrderByDescending<TSource, TKey>(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector);`

# Merging

:heavy_check_mark: `public static IEnumerable<TSource> Prepend<TSource>(this IEnumerable<TSource> source, TSource element);`

:heavy_check_mark: `public static IEnumerable<TSource> Concat<TSource>(this IEnumerable<TSource> first, IEnumerable<TSource> second);`

:heavy_check_mark: `public static IEnumerable<TSource> Append<TSource>(this IEnumerable<TSource> source, TSource element);`

# Utils

:heavy_check_mark: `public static IEnumerable<TSource> Except<TSource>(this IEnumerable<TSource> first, IEnumerable<TSource> second);`

:heavy_check_mark: `public static IEnumerable<TResult> Zip<TFirst, TSecond, TResult>(this IEnumerable<TFirst> first, IEnumerable<TSecond> second, Func<TFirst, TSecond, TResult> resultSelector);`
