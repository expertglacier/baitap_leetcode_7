class Solution {
  // Ý tưởng: Các chữ số giống nhau liền kề nhau sẽ đều bằng 0. Vậy nên, có thể bỏ
  // qua không cần tính toán.
  int alternateDigitSum(int n) {
    // Biến nString chuyển đổi từ int n sang string.
    String nString = n.toString();
    // Khởi tạo biến kết quả.
    int result = 0;

    // Duyệt từ từng chữ trong chuỗi.
    for (int i = 0; i < nString.length; i++) {
      // Nếu chữ số hiện tại bằng với chữ số liền sau nó, sẽ bỏ duyệt số hiện tại và
      // số liền sau nó.
      if (i + 1 < nString.length && nString[i] == nString[i + 1]) {
        i++;
        continue;
      }

      // Nếu số hiện tại có thứ tự chẵn, cộng số vào result.
      // Nếu số hiện tại có thứ tự lẻ, result bằng result trừ số hiện tại.
      if (i % 2 == 0) {
        result += int.parse(nString[i]);
      } else {
        result -= int.parse(nString[i]);
      }
    }

    // Trả về kết quả cuối cùng.
    return result;
  }
}