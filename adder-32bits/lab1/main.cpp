#include <iostream>
#include <vector>
#include <fstream>

using namespace std;

const int N = 32;

vector<string> result;

string get_i(string a, int idx) {
    return a + "[" + to_string(idx) + "]";
}

int main() {
    fstream file;
    file.open("output.txt", ios::out);

    string C = "0";
    for (int i = 0; i < N; i ++ ) {
        result.emplace_back("assign ");
        result[i] += get_i("sum", i) + " = " + get_i("a", i) + " ^ " + get_i("b", i) + " ^ " + C;
        C = "(" + get_i("a", i) +  + " * " + get_i("b", i) + " + " + "(" + get_i("a", i) + " ^ " + get_i("b", i) + ")" + " * " + C + ")";
        result[i] += ";";
    }

    for (const auto& it : result)
        file << it << endl;

    file.close();
    return 0;
}
