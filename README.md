# Flutter Stream and Future Example

## Future Example
This example uses a Future to update the UI with a countdown of numbers. Here are the key points:

- We define a Future to represent a single value that will be available at some point in the future.
- We use a for loop to count from 1 to 5 with a delay of one second between each iteration.
- We update the _count variable using setState() to trigger a rebuild of the widget tree.
- We display the _count value using a Text widget.

### Key Differences:

- A Future represents a single value that will be available at some point in the future.
- With a Future, you can only retrieve a single value when it becomes available.
- A Future can be used for a one-time asynchronous operation, such as fetching data from an API.

## Stream Example
This example uses a Stream to update the UI with a countdown of numbers. Here are the key points:

- We define a Stream to represent a sequence of values that will be available over time.
- We use the Stream.periodic() constructor to generate a stream of values at regular intervals.
- We update the _count variable using setState() to trigger a rebuild of the widget tree.
- We display the _count value using a Text widget.

### Key Differences:

- A Stream represents a sequence of values that will be available over time.
- With a Stream, you can retrieve multiple values as they become available over time.
- A Stream is useful for handling ongoing events or data that is constantly changing.