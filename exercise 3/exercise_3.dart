class Solution {
  int differenceOfSum(List<int> nums) {
    // Khởi tạo 2 biến lưu trữ tổng của các phần tử, và tổng của các số trong phần tử.
    int elementSum = 0;
    int digitSum = 0;

    // Duyệt qua mỗi phần tử trong nums.
    for (int num in nums) {
      // Tăng giá trị của tổng các phần tử lên khi cộng với phần tử hiện tại.
      elementSum += num;

      // Nếu phần tử hiện tại lớn hơn hoặc bằng 10, thực hiện tính toán các số của nó.
      if (num >= 10) {
        while (num > 0) {
          // Tăng giá trị của tổng các số trong phần tử, khi cộng với các số cuối cùng
          // trong phần tử hiện tại.
          digitSum += num % 10;
          // Xoá chữ số cuối cùng của phần tử bằng phép chia nguyên.
          num ~/= 10;
        }
      } else {
        // Nếu phần tử hiện tại nhỏ hơn 10, tăng giá trị của tổng các số trong phần từ, khi cộng
        // với pần tử hiện tại.
        digitSum += num;
      }
    }

    // Trả về giá trị tuyệt đối của tổng của tất cả phần tử trong
    // nums trừ tổng của các chữ số trong từng phần tử.
    return (elementSum - digitSum).abs();
  }
}