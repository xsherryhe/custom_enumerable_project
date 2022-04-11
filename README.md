# Custom Enumerable Project

This repository was forked from the [Custom Enumerables](https://github.com/TheOdinProject/custom_enumerable_project) repo from The Odin Project. It contains a reimplementation of various common enumerable methods in Ruby (e.g., `Enumerable#each`, `Enumerable#select`, `Enumerable#inject`) without using the corresponding built-in method. Specs were provided in the original repo to test the solutions (see table below).

This project primarily demonstrates use of blocks, procs, and lambdas in Ruby programming, including syntax such as the `yield` keyword and `Proc#call` method.


### Methods

The following table has the custom enumerable methods along with their associated specs.

| Method                          | Spec File                       | Notes                                                                 |
| ------------------------------- | ------------------------------- | --------------------------------------------------------------------- |
| `Array#my_each`                 | spec/my_each_spec.rb            | Defined on the Array class in `lib/my_enumerables.rb` |
| `Enumerable#my_each_with_index` | spec/my_each_with_index_spec.rb |                                                                       |
| `Enumerable#my_select`          | spec/my_select_spec.rb          |                                                                       |
| `Enumerable#my_all?`            | spec/my_all_spec.rb             |                                                                       |
| `Enumerable#my_any?`            | spec/my_any_spec.rb             |                                                                       |
| `Enumerable#my_none?`           | spec/my_none_spec.rb            |                                                                       |
| `Enumerable#my_count`           | spec/my_count_spec.rb           |                                                                       |
| `Enumerable#my_map`             | spec/my_map_spec.rb             |                                                                       |
| `Enumerable#my_inject`          | spec/my_inject_spec.rb              
