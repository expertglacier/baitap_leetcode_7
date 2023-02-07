class Solution {
  int findContentChildren(List<int> g, List<int> s) {
    // Khởi tạo 2 biến i là thứ tự (index) của List g, và j là
    // thứ tự của List s.
    int i = 0;
    int j = 0;
    // Trả về kết quả.
    int result = 0;

    // Sắp xếp hai list g và s theo thứ tự từ bé đến lớn.
    g.sort();
    s.sort();

    // Thực hiện so sánh các phần tử của 2 list với nhau. Nếu độ dài
    // thứ tự (index) của 2 list nhỏ hơn độ dài của chúng.
    while (i < g.length && j < s.length) {
      // Nếu phần tử hiện tại của g nhỏ hơn hoặc bằng phần tử hiện
      // tại của j (tham lam <= size cookie), thực hiện tăng thứ tự
      // của i (tham lam), j (bánh quy) lên; và cộng thêm 1 vào result.
      if (g[i] <= s[j]) {
        i++;
        j++;
        result++;
      } else {
        // Ngược lại, tăng thứ tự của j (bánh quy) lên, để tiếp tục so
        // sánh size của bánh quy tiếp theo và độ tham lam của đứa trẻ.
        j++;
      }
    }

    // Trả về kết quả cuối cùng.
    return result;
  }
}