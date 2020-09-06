---
title: Ruby
tags: Crawler
---

# 那些關於Ruby Crawler的事情

[Nokogiri](https://nokogiri.org/) 是 用來解析HTML/XML的好工具

## Install

```
gem install nokogiri
```

## Require

```Ruby
require 'nokogiri'
require 'open-uri'  # 標 準 函 式 庫
```

再Ruby標準函式庫是指說，再安裝Ruby後就有了，但是要使用的話就要requrie進來才可以使用

## Fetch and parse
```Ruby
doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))
```

## 執行看看

```Ruby=
require "open-uri" 
require "nokogiri" 

targe_url = 'https://www.taiwanlottery.com.tw/lotto/lotto649/history.aspx'

html = open(targe_url).read
doc = Nokogiri::HTML(html)
p doc
```

## 抓取特定目標
根據Nokogiri網站說明
```Ruby=
# puts "### Search for nodes by css"
doc.css('nav ul.menu li a', 'article h2').each do |link|
  puts link.content
end
```

## 來測試一下

```Ruby=
require "open-uri" #open-uri 把一個網頁當一個檔案來打開 stb-lib // curb 
require "nokogiri" #解析 html gem

targe_url = 'https://www.taiwanlottery.com.tw/lotto/lotto649/history.aspx'

html = open(targe_url).read
doc = Nokogiri::HTML(html)

doc = doc.css('td.font_black14b_center').count

p doc
```

## 接著取內層數字

嘗試了幾次都抓到空白，再來去看看doc
