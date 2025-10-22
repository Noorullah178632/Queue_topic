class Dequeue {
  List<int> data = [];
  //enqueue in Front
  void enqueueFront(int value) {
    data.insert(0, value);
    print("$value inserted at the front of the Deque");
  }

  //enqueue in rear
  void enqueueRear(int value) {
    data.add(value);
    print("$value inserted at the End of the Deque");
  }

  //deque from front
  void dequeueFront() {
    if (data.isEmpty) {
      print("List is Empty ");
    } else {
      int removedValue = data.removeAt(0);
      print("$removedValue has been removed from the Front");
    }
  }

  //dequeue from rear
  void dequeueRear() {
    if (data.isEmpty) {
      print("List is Empty ");
    } else {
      int removeValue = data.removeLast();
      print("$removeValue has been removed from the Rear ");
    }
  }

  //display
  void display() {
    if (data.isEmpty) {
      print("Dequeue list empty ");
    } else {
      print("Dequeue List:$data");
    }
  }
}

void main() {
  Dequeue a = Dequeue();
  a.enqueueFront(33);
  a.enqueueFront(22);
  a.enqueueRear(23);
  a.dequeueFront();
  a.dequeueRear();
  a.display();
}
