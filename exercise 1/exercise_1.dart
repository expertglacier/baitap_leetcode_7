class Solution {
  String largestOddNumber(String num) {
    // Biến lastIndexOfNum chứa vị trí cuối cùng của biến num.
    int lastIndexOfNum = num.length - 1;

    // Vòng lặp duyệt từ vị trí cuối cùng đến vị trí đầu tiên của biến num.
    for (int i = lastIndexOfNum; i >= 0; i--) {
      // Sử dụng codeUnitAtt() để lấy ra giá trị ASCII của ký tự tại vị trí i.
      // Lý do ASCII sử dụng được vì tất cả các số có tận cùng là 1, 3, 5, 7,
      // và 9 đều là số lẻ, áp dụng cho cả ASCII.
      // ASCII cũng tối ưu hơn việc ép kiểu sang 'int' bằng cách dùng int.parse
      // (Đã test int.parse).

      // Nếu kí tự tại vị trí i là số lẻ, return biến num từ vị trí đầu tiên,
      // đến vị trí i (bao gồm cả vị trí i).
      if (num.codeUnitAt(i) % 2 != 0) return num.substring(0, i + 1);
    }

    // Nếu không tìm được số lẻ nào, trả về chuỗi rỗng.
    return "";
  }
}