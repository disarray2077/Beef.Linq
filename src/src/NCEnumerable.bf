using System.Collections;
using System;
using internal System.Linq;

namespace System.Linq
{
	public static
	{
#region Enumerable Chains
		struct NCIterator<TEnum, TSource> : IDisposable
			where TEnum : IEnumerator<TSource>
		{
			internal TEnum mEnum;

			public this(TEnum items)
			{
				mEnum = items;
			}

			[SkipCall]
			public void Dispose() mut { }

			public static implicit operator NCIterator<TEnum, TSource>(TEnum enumerator) => .(enumerator);
		}

		struct NCWhereEnumerable<TSource, TEnum, TPredicate> : IEnumerable<TSource>, IDisposable
			where TPredicate : delegate bool(TSource)
			where TEnum : IEnumerator<TSource>
		{
			TPredicate mPredicate;
			NCIterator<TEnum, TSource> mIterator;

			public this(TEnum enumerator, TPredicate predicate) 
			{
				mIterator = enumerator;
				mPredicate = predicate;
			}

			Result<TSource> GetNext() mut
			{
				while (mIterator.mEnum.GetNext() case .Ok(let val))
					if (mPredicate(val))
						return .Ok(val);

				return .Err;
			}

			public Enumerator GetEnumerator() => .(this);

			public struct Enumerator : IEnumerator<TSource>, IDisposable
			{
				SelfOuter mSelf;
				public this(SelfOuter self)
				{
					mSelf = self;
				}
				public Result<TSource> GetNext() mut => mSelf.GetNext();

				public void Dispose() mut
				{
					mSelf.Dispose();
				}
			}

			public void Dispose() mut
			{
				mIterator.Dispose();
			}
		}

		public static NCWhereEnumerable<TSource, TEnum, TPredicate>
			Where<TEnum, TSource, TPredicate>(this TEnum items, TPredicate predicate)
			where TEnum : IEnumerator<TSource>
			where TPredicate : delegate bool(TSource)
		{
			return .(items, predicate);
		}

		struct NCSelectEnumerable<TSource, TEnum, TSelect, TResult> : Iterator<TEnum, TSource>, IEnumerable<TResult>
			where TSelect : delegate TResult(TSource)
			where TEnum : IEnumerator<TSource>
		{
			TSelect mDlg;

			public this(TEnum e, TSelect dlg) : base(e)
			{
				mDlg = dlg;
			}

			Result<TResult> GetNext() mut
			{
				if (mEnum.GetNext() case .Ok(let val))
					return mDlg(val);

				return .Err;
			}

			public Enumerator GetEnumerator() => .(this);

			public struct Enumerator : IEnumerator<TResult>
			{
				SelfOuter mEnum;
				public this(SelfOuter enumerator)
				{
					mEnum = enumerator;
				}
				public Result<TResult> GetNext() mut => mEnum.GetNext();
			}
		}

		public static NCSelectEnumerable<TSource, TEnum, TSelect, TResult>
			Select<TEnum, TSource, TSelect, TResult>(this TEnum items, TSelect select)
			where TEnum : IEnumerator<TSource>
			where TSelect : delegate TResult(TSource)
		{
			return .(items, select);
		}
#endregion

#region Matching
		public static bool All<TEnum, TSource, TPredicate>(this TEnum items, TPredicate predicate)
			where TEnum : IEnumerator<TSource>
			where TPredicate : delegate bool(TSource)
		{
			return InternalAll(items, predicate);
		}

		static bool InternalAll<TEnum, TSource, TPredicate>(TEnum items, TPredicate predicate)
			where TEnum : IEnumerator<TSource>
			where TPredicate : delegate bool(TSource)
		{
			using (var iterator = Iterator.Wrap(items))
			{
				var enumerator = iterator.mEnum;
				switch (enumerator.GetNext())
				{
				case .Ok(let val): if (!predicate(val)) return false;
				case .Err: return false;
				}

				while (enumerator.GetNext() case .Ok(let val))
					if (!predicate(val))
						return false;

				return true;
			}
		}

		public static bool Any<TEnum, TSource>(this TEnum items)
			where TEnum : IEnumerator<TSource>
		{
			for (var it in items)
				return true;

			return false;
		}

		public static bool Any<TEnum, TSource, TPredicate>(this TEnum items, TPredicate predicate)
			where TEnum : IEnumerator<TSource>
			where TPredicate : delegate bool(TSource)
		{
			for (var it in items)
				if (predicate(it))
					return true;

			return false;
		}

		public static bool Contains<TCollection, TSource>(this TCollection items, TSource source)
			where TCollection : IEnumerator<TSource>
			where bool : operator TSource == TSource
		{
			for (var it in items)
				if (it == source)
					return true;

			return false;
		}
#endregion
	}
}