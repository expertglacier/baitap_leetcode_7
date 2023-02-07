class Solution {
  int countDigits(int num) {
    // Tạo bản sao của num để thực hiện tính toán.
    int numCopy = num;
    // Biến result đếm số lần các chữ số của num chia cho num.
    int result = 0;

    // Vòng lặp chạy cho đến khi num <= 0.
    while (numCopy > 0) {
      // Tìm chữ số cuối cùng của numCopy, bằng cách dùng toán tử chia lấy dư.
      int digit = numCopy % 10;
      
      // Nếu num chia hết cho digit, result sẽ tăng lên 1.
      if (num % digit == 0) result++;

      // Bỏ chữ số cuối cùng của biến numCopy, bằng cách dùng phép chia nguyên.
      numCopy ~/= 10;
    }

    // Trả về tổng số các chữ số của num chia hết cho chính nó.
    return result;
  }
}