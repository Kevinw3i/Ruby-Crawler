require "open-uri" #open-uri 把一個網頁當一個檔案來打開 stb-lib // curb 
require "nokogiri" #解析 html gem

targe_url = 'https://www.taiwanlottery.com.tw/lotto/lotto649/history.aspx'

html = open(targe_url).read
doc = Nokogiri::HTML(html)

# doc = doc.css('td.font_black14b_center').count

doc.css('.font_black14b_center').each do | num |
    p num.css('span.td_w').text
end

# p doc

