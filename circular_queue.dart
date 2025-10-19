class CircularQueue {
  int maxSize = 5;
  late List<int> data;
  int front = -1;
  int rear = -1;
  CircularQueue() {
    data = List.filled(maxSize, 0);
  }
  //enQueue
  void enQueue(int value) {
    //first we would check that the queue is full or not
    if ((front == 0 && rear == maxSize - 1) || (rear + 1) % maxSize == front) {
      print("Queue is full and we can't add Value:$value");
      return;
    }
    //if the Queue is empty
    if (front == -1) {
      front = 0;
    }
    //write code for rear
    rear = (rear + 1) % maxSize;
    data[rear] = value;
    print("Value: $value is added to the Circular Queue ");
  }

  //display all the element of the circular list
  void display() {
    if (front == -1) {
      print("Queue is Empty");
      return;
    }
    print("Circular element:");
    int i = front;
    int j = rear;
    List b = [];
    while (true) {
      int v = data[i];
      b.add(v);
      if (i == j) break;
      i = (i + 1) % maxSize;
    }
    print(b);
  }

  //view peek value
  void peek() {
    if (front == -1) {
      print("Queue is Empty");
    } else {
      print("First Element of the Cicular Queue :${data[front]}");
    }
  }

  //check if the Queue is empty or noot
  bool isEmpty() {
    if (front == -1) {
      return true;
    }
    return false;
  }

  //check if the Queue is full or not
  bool isFull() {
    if ((front == 0 && rear == maxSize - 1) || (rear + 1) % maxSize == front) {
      return true;
    }
    return false;
  }

  //delete value from the front
  void deQueue() {
    if (front == -1) {
      print("Queue is Empty ");
      return;
    }
    int value = data[front];
    print("Value Deleted :$value");
    if (front == rear) {
      front = -1;
      rear = -1;
    } else {
      front = (front + 1) % maxSize;
    }
  }
}

void main() {
  CircularQueue a = CircularQueue();
  a.enQueue(20);
  a.enQueue(30);
  a.enQueue(40);
  a.peek();
  a.deQueue();
  a.display();
}
