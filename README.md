# Notes & Difficulties

## Key Points

### You never have to go over the elements more than `n - 1` times.

That means if you have `8` elements, you only have to iterate `7` times. Or if you have `12` elements, `11` times. etc.

After `1` iteration, *we don't need to check the right-most element*, as we know it's sorted. Then after two iterations, *we know the two right-most elements are sorted*.

So the first iteration we will use `n - 0`, on the second, `n - 1`, etc.

### We can use a Boolean flag to check if any elements were swapped if none were swapped, we know the array is already sorted, so we can set sorted to true and stop iterating.

## Some Explanations

Here we break the loop if sorted is `false`:

```rb
break if not sorted # Syntactic sugar for `break if sorted == false`
```

This is because sorted is set to `false` at the start of the loop, then set to `true` when a swap has been made, this means as long as swaps keep being made, sorted will keep being `true`, if the loop iterates and no swaps are made, sorted will stay `false`, thus breaking the loop.

```rb
sorted = true # Set sorted to true, indicating a swap has been made
```

The above occurs within the loop.

## Conclusion

Although overall simple, this bubble sort took a lot to wrap my head around it, I understand that it is not recommended as it's inefficient and all that and in most cases you'd just use the `#sort` method. But it was still nice to work though this and piece together how the sorting algorithm works, but I will still need more practice.