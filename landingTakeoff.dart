class Pesawat {
  String? nama;
  String? kode;
  String? jenis;

  Pesawat(this.nama, this.kode, this.jenis);

  @override
  String toString() => 'Nama maskapai: $nama, Kode pesawat: $kode, Jenis pesawat: $jenis';
}

class Queue{
  List<Pesawat?> antrian= [];
  int front = 0;
  int rear = -1;
  int maxQueue = 0;

  void queueOperation() {
    front = 0;
    rear = -1;
    int max = 100;
    antrian = List<Pesawat?>.filled(max, null);
    maxQueue = max - 1;
  }

  bool isEmpty() {
    return rear == -1 && front == 0;
  }

  bool isFull() {
    return rear == maxQueue;
  }

  void enqueue(Pesawat data) {
    if (isFull()) {
      print("Antrian Penuh, Tidak dapat diisi lagi!");
    } else {
      rear += 1;
      antrian[rear] = data;
    }
  }

  Pesawat? dequeue() {
    if (isEmpty()) {
      print("Antrian kosong!");
      return null;
    }
    Pesawat? removedItem = antrian[front];
    if (front == rear) {
      front = 0;
      rear = -1;
    } else {
      front += 1;
    }
    return removedItem;
  }

  int search(String? x) {
    for (int i = front; i <= rear; i++) {
      if (antrian[i]?.kode == x) return i;
    }
    return -1;
  }

  void printAntrian() {
    if (!isEmpty()) {
      for (int i = rear; i >= front; i--) {
        print("Maskapai ke-${i + 1} = ${antrian[i]}");
      }
    } else {
      print("Antrian pesawat kosong");
    }
  }
}
