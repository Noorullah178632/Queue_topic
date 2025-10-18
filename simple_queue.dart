class SimpleQueue {
  List<int> data = [1, 2];
  //enqueue in queue
  void enQueue(int value) {
    data.add(value);
    print("value: $value is added to the Queue");
  }

  //deQueue in Queue
  void deQueue() {
    if (data.isEmpty) {
      print("The Queue is empty");
    } else {
      int value = data.removeAt(0);
      print("Value: $value has been removed from the Queue");
    }
  }

  //peek in Queue
  void peek() {
    if (data.isEmpty) {
      print("The Queue is Empty");
    } else {
      int value = data[0];
      print("Peek element:$value of the Queue");
    }
  }

  //is empty
  bool isEmpty() {
    return data.isEmpty;
  }

  //isFull
  bool isFull() {
    int maxSize = 5;
    return data.length == maxSize;
  }

  //show the list
  void display() {
    if (data.isEmpty) {
      print("Queue is Empty");
    } else {
      print("Queue List:$data");
    }
  }
}

void main() {
  SimpleQueue a = SimpleQueue();
  a.enQueue(2);
  a.deQueue();
  a.peek();
  print(a.isEmpty());
  print(a.isFull());
  a.display();
}
