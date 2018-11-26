#include<iostream>
#include<map>
#include<string>
#include<fstream>
#include<sstream>
#include<stdexcept>
using namespace std;


//建立转换映射
map<string,string>buildMap(ifstream &map_file)
{
    map<string,string>trans_map;
    string key;//要替换的单词
    string value;//替换后的单词
    while(map_file>>key&&getline(map_file,value))
        if(value.size()>1)
            trans_map[key]=value.substr(1);//跳过前导空格
        else
            throw runtime_error("没有转换规则");
    return trans_map;
}


//生成转换文本
const string &transform(const string &s,const map<string,string>&m)
{
    auto map_it=m.find(s);
    if(map_it!=m.cend())
        return map_it->second;
    else
        return s;
}
void word_transform(ifstream &map_file,ifstream &input)
{
    auto trans_map=buildMap(map_file);
    string text;
    while(getline(input,text))
    {
        istringstream stream(text);
        string word;
        bool firstword=true;
        while(stream>>word)
        {
            if(firstword)
                firstword=false;
            else
                cout<<" ";
            cout<<transform(word,trans_map);
        }
        cout<<endl;
    }

}
int main()
{
    ifstream map_file("1.txt");
    ifstream input("2.txt");
    word_transform(map_file,input);
    return 0;
}