#include <fstream>
#include <map>
#include <string>
#include <sstream>

#include <iostream>

using namespace std;

map<string,string> buildMap(ifstream &map_file) {
    map<string, string> trans_map;
    string key;//要替换的单词
    string value;//替换后的内容
    //读取map_file文件，将单词存入key中，剩余要替换的内容存入value中
    while (map_file >> key&&getline(map_file, value)) {
        //检查是否有转换规则
        if (value.size() > 1) {
            trans_map[key] = value.substr(1);//跳过前导空格
        }
        else {
            throw runtime_error("no rule for " + key);
        }
    }
    return trans_map;
}

string transform(const string &word,const map<string,string> &m) {
    auto it = m.find(word);
    if (it!=m.cend()) {
        return it->second;
    }
    else {
        return word;
    }
}


void  WordConversion(ifstream &map_file, ifstream &input) {
    auto trans_map = buildMap(map_file);
    string text;//保存输入的每一行
    while (getline(input, text)) {
        //处理每一个单词
        istringstream stream(text);
        string word;
        bool isspace = true;//控制是否打印空格
        while (stream >> word) {
            if (isspace)
                isspace = false;
            else {
                cout << " ";
            }
            cout << transform(word, trans_map);
        }
        cout << endl;
    }
}


int main() {
    ifstream map_file("1.txt");
    ifstream input("2.txt");
    WordConversion(map_file, input);
    return 0;
}

