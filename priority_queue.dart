class PriorityQueue {
  List<List<int>> data = [];
  //enQueue
  void enQueue(int value, int priority) {
    List<int> newItem = [value, priority];
    if (data.isEmpty) {
      data.add(newItem);
    } else {
      bool added = false;
      for (int i = 0; i < data.length; i++) {
        if (priority < data[i][1]) {
          //"<" this is for assending order, for decending order we have to use ">"
          data.insert(i, newItem);
          added = true;
          break;
        }
      }
      if (!added) {
        data.add(newItem);
      }
    }
    print(" New value:$value with Priority:$priority added in the List");
  }

  //dequeue
  void deQueue() {
    if (data.isEmpty) {
      print("Queue is empty ");
    } else {
      List d = data.removeAt(0);
      print("The Data:${d[0]} with Prioriy:${d[1]} has been removed ");
    }
  }

  //peek
  void peek() {
    if (data.isEmpty) {
      print("Queue is Empty");
    } else {
      List<int> d = data[0];
      print("Peek → Value: ${d[0]}, Priority: ${d[1]}");
    }
  }

  //isEmpty
  bool isEmpty() => data.isEmpty;

  //display the list
  void display() {
    if (data.isEmpty) {
      print("The Queue is Empty");
    } else {
      print("Present List :$data");
    }
  }
}

void main() {
  PriorityQueue a = PriorityQueue();
  a.enQueue(19, 4);
  a.enQueue(10, 2);
  a.enQueue(100, 1);
  a.enQueue(99, 0);
  // a.deQueue();
  a.peek();

  print(a.isEmpty());
  a.display();
}
