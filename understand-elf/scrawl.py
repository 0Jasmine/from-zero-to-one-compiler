"""
@Author: Jasmine Xie
@Brief: 简单地写一个爬虫，爬一下可以用的 analyze pass,transform pass options from llvm.org
可用选项输出到 ./understand-elf/optal-options,./understand-elf/opttf-options
"""
import requests
import bs4


def get_html():
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36",
        "Accept": "*/*",
        "Host": "llvm.org",
        "Connection": "keep-alive",
        "Accept-Language": "en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7,zh-TW;q=0.6",
        "Accept-Encoding": "gzip, deflate"
    }
    url = "https://llvm.org/docs/Passes.html"
    response = requests.get(url=url, headers=headers)
    if response.status_code == 200:
        return response.text
    else:
        return None


def get_tf_option(text):
    bsobj = bs4.BeautifulSoup(text, features="lxml")
    options = set()
    for pass_id in range(36, 89):
        a = bsobj.find("a", {"id": "id" + str(pass_id)})
        options.add(a.find("span", {"class": "pre"}).get_text())
    return options

def get_al_option(text):
    bsobj = bs4.BeautifulSoup(text, features="lxml")
    options = set()
    for pass_id in range(3, 35):
        a = bsobj.find("a", {"id": "id" + str(pass_id)})
        options.add(a.find("span", {"class": "pre"}).get_text())
    return options

if __name__ == "__main__":
    html = get_html()
    al_options = get_al_option(html)
    tf_options = get_tf_option(html)
    with open("./optal-options", encoding="utf-8", mode="w+") as file1,open("./opttf-options", encoding="utf-8", mode="w+") as file2 :
        for option in al_options:
            file2.write(option + "\n")
        for option in tf_options:
            file1.write(option + "\n")
    print("Finish reading opt options.")
