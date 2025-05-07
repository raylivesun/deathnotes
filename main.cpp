#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <queue>
#include <set>
#include <map>
#include <cmath>
#include <limits>
#include <functional>
#include <numeric>
#include <cassert>
#include <iomanip>
#include <chrono>
#include <random>
#include <sstream>
#include <fstream>
#include <iterator>
#include <array>
#include <bitset>
#include <list>
#include <tuple>
#include <memory>
#include <type_traits>
#include <utility>
#include <regex>
#include <thread>
#include <future>
#include <condition_variable>
#include <atomic>
#include <stdexcept>
#include <cassert>
#include <cctype>
#include <cstdlib>
#include <cstring>
#include <cstdio>
#include <ctime>
#include <cmath>
#include <climits>
#include <cfloat>
#include <cstdint>
#include <cstddef>
#include <cstdarg>
#include <cinttypes>
#include <ccomplex>
#include <csetjmp>
#include <cstdalign>
#include <cstdbool>
#include <ciso646>
#include <cuchar>
#include <cwchar>
#include <cwctype>
#include <csignal>
#include <cstdarg>
#include <cstddef>
#include <cstdint>
#include <cinttypes>
#include <cuchar>

void solve() {
    int n, m;
    std::cin >> n >> m;
    std::vector<int> a(n);
    for (int i = 0; i < n; ++i) {
        std::cin >> a[i];
    }
    std::sort(a.begin(), a.end());
    int ans = 0;
    for (int i = 0; i < n; ++i) {
        if (a[i] > m) {
            break;
        }
        ans++;
        m -= a[i];
    }
    std::cout << ans << std::endl;
}

int main() {
    int t;
    std::cin >> t;
    while (t--) {
        solve();
    }
    return 0;
}



