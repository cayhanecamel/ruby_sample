
require 'open-uri'
require 'resolv-replace'
require 'timeout'

TIMEOUT = 4
begin
  timeout(TIMEOUT) do
    #response = open('http://api.fanyi.baidu.com/api/trans/vip/translate?appid=20160126000009372&salt=1435660281&sign=c22bab7d5eb0bc3bef9e333d1d8e19ab&q=%E7%BE%8E%E5%91%B3%E3%81%97%E3%81%9D%E3%81%86%EF%BC%81%E3%81%A9%E3%81%86%E3%82%82%E3%81%82%E3%82%8A%E3%81%8C%E3%81%A8%E3%81%86%E3%81%94%E3%81%96%E3%81%84%E3%81%BE%E3%81%99%EF%BC%81%EF%BC%81%EF%BC%81&from=auto&to=cht&from=jp&to=cht')
    #response = open('http://ope.dev-melpy.me/help',{read_timeout: 1})
    #response = open('http://10.33.82.89/help',{read_timeout: 1})
    #response = open('http://api.fanyi.baidu.com/api/trans/vip/translate?appid=20160126000009372&salt=1435660281&sign=cf887eddd1324c03aeed8d0aa172d4ac&q=%E4%BB%8A%E5%9B%9E%E3%81%94%E7%B4%B9%E4%BB%8B%E3%81%99%E3%82%8B%E3%81%AE%E3%81%AF%E3%80%81%E3%83%A2%E3%83%AB%E3%83%87%E3%82%A3%E3%83%96%E3%81%AB%E3%81%82%E3%82%8B%E2%80%9D%E6%98%9F%E7%A9%BA%E3%81%AB%E6%B5%AE%E3%81%8B%E3%81%B6%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%83%9B%E3%83%86%E3%83%AB%E2%80%9D%E3%80%82%EF%BC%91%E5%91%A8%E3%81%9F%E3%81%A3%E3%81%9F%E3%81%AE%E5%BE%92%E6%AD%A9%EF%BC%91%EF%BC%90%E5%88%86%E3%81%A8%E3%81%84%E3%81%86%E5%B0%8F%E3%81%95%E3%81%AA%E5%B3%B6%E3%81%AB%E5%BB%BA%E3%81%A4%E3%80%81%E6%9C%80%E9%AB%98%E7%B4%9A%E3%81%AE%E3%83%A9%E3%82%B0%E3%82%B8%E3%83%A5%E3%82%A2%E3%83%AA%E3%83%BC%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%83%9B%E3%83%86%E3%83%AB%E3%81%AA%E3%82%93%E3%81%A7%E3%81%99%EF%BC%81%E3%83%8F%E3%83%8D%E3%83%A0%E3%83%BC%E3%83%B3%E3%81%AB%E3%81%AF%E3%82%82%E3%81%A1%E3%82%8D%E3%82%93%E3%80%81%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%81%A7%E6%8C%99%E5%BC%8F%E3%82%82%E3%81%A7%E3%81%8D%E3%82%8B%E3%81%BE%E3%82%8B%E3%81%A7%E5%A4%A9%E5%9B%BD%E3%81%AE%E3%82%88%E3%81%86%E3%81%AA%E3%83%9B%E3%83%86%E3%83%AB%E3%81%A7%E3%81%99%E3%80%82%E3%81%BE%E3%82%8B%E3%81%A7%E6%98%9F%E7%A9%BA%E3%81%AB%E6%B5%AE%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%81%8B%E3%81%AE%E3%82%88%E3%81%86%E3%81%AA%E4%B8%8D%E6%80%9D%E8%AD%B0%E7%A9%BA%E9%96%93%E3%80%82%E3%81%A8%E3%81%A6%E3%82%82%E5%B9%BB%E6%83%B3%E7%9A%84%E3%81%AA%E6%99%AF%E8%89%B2%E3%81%A7%E3%80%81%E5%A4%A2%E3%81%AE%E4%B8%96%E7%95%8C%E3%81%AB%E6%9D%A5%E3%81%9F%E3%82%88%E3%81%86%E3%81%AA%E9%8C%AF%E8%A6%9A%E3%81%AB%E8%A5%B2%E3%82%8F%E3%82%8C%E3%81%BE%E3%81%99%E3%80%82%E5%AE%9F%E3%81%AF%E3%81%93%E3%82%8C%E3%80%81%E5%9C%B0%E9%9D%A2%E3%81%AF%E3%83%97%E3%83%BC%E3%83%AB%E3%81%AB%E3%81%AA%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B%E3%82%93%E3%81%A7%E3%81%99%E3%80%82%E5%BA%95%E6%9D%BF%E3%81%AB%E8%89%B2%E3%81%A8%E3%82%8A%E3%81%A9%E3%82%8A%E3%81%AELED%E3%81%8C%E4%BB%95%E8%BE%BC%E3%81%BE%E3%82%8C%E3%81%A6%E3%81%84%E3%82%8B%E3%81%8B%E3%82%89%E3%81%AA%E3%82%93%E3%81%A7%E3%81%99%E3%81%8C%E3%80%81%E5%AE%87%E5%AE%99%E7%A9%BA%E9%96%93%E3%81%AB%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB%E3%81%A8%E3%82%A4%E3%82%B9%E3%81%8C%E6%BC%82%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB%E8%A6%8B%E3%81%88%E3%81%A6%E3%81%97%E3%81%BE%E3%81%84%E3%81%BE%E3%81%99%E3%81%AD%E3%80%82%E3%81%93%E3%81%AE%E3%83%9B%E3%83%86%E3%83%AB%E3%81%AF%E3%80%8C%E3%83%95%E3%83%B4%E3%82%A1%E3%83%95%E3%82%A7%E3%83%B3%E3%83%95%E3%82%B7(Huvafen%20Fushi)%E3%80%8D%E3%80%82%E7%8F%BE%E5%9C%B0%E3%81%AE%E8%A8%80%E8%91%89%E3%81%A7%E3%80%8C%E5%A4%A2%E3%81%AE%E5%B3%B6%E3%80%8D%E3%81%AE%E6%84%8F%E5%91%B3%E3%80%82%E3%81%9D%E3%81%AE%E5%90%8D%E5%89%8D%E3%81%AB%E3%81%B4%E3%81%A3%E3%81%9F%E3%82%8A%E3%81%AE%E6%A5%B5%E4%B8%8A%E3%81%AE%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%81%AF%E3%80%81%E3%81%93%E3%81%93%E3%81%A7%E3%81%97%E3%81%8B%E5%91%B3%E3%82%8F%E3%81%88%E3%81%AA%E3%81%84%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E6%B0%97%E5%88%86%E3%82%92%E6%BA%80%E5%96%AB%E3%81%95%E3%81%9B%E3%81%A6%E3%81%8F%E3%82%8C%E3%82%8B%E5%A0%B4%E6%89%80%E3%81%A7%E3%81%99%E3%80%82%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%97%E3%83%BC%E3%83%AB%E3%81%AE%E3%81%B2%E3%81%A8%E3%81%A4%E3%82%84%E3%80%81%E3%83%A9%E3%82%B0%E3%83%BC%E3%83%B3%E3%83%90%E3%83%B3%E3%82%AC%E3%83%AD%E3%83%BC%E3%81%AE%E3%83%97%E3%83%A9%E3%82%A4%E3%83%99%E3%83%BC%E3%83%88%E3%83%97%E3%83%BC%E3%83%AB%E3%81%AF%E3%80%81%E3%81%BE%E3%82%8B%E3%81%A7%E6%B5%B7%E3%81%AE%E4%B8%8A%E3%81%AB%E6%B5%AE%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%82%88%E3%81%86%E3%81%AA%E3%80%81%E3%81%A8%E3%81%A6%E3%82%82%E9%96%8B%E6%94%BE%E7%9A%84%E3%81%AA%E3%83%97%E3%83%BC%E3%83%AB%E3%81%A7%E3%81%99%E3%80%82%E3%83%97%E3%83%BC%E3%83%AB%E3%81%8C%E6%B5%B7%E3%81%B8%E3%81%A8%E3%80%81%E3%81%BE%E3%81%9F%E3%81%AF%E7%A9%BA%E3%81%B8%E3%81%A8%E7%B6%9A%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB%E8%A6%8B%E3%81%88%E3%81%BE%E3%81%99%E3%81%AD%E3%80%82%E5%BA%83%E3%81%8C%E3%82%8B%E6%B0%B4%E5%B9%B3%E7%B7%9A%E3%82%92%E7%9C%BA%E3%82%81%E3%81%9F%E3%82%8A%E3%80%81%E3%82%B5%E3%83%B3%E3%82%BB%E3%83%83%E3%83%88%E3%82%92%E6%A5%BD%E3%81%97%E3%82%93%E3%81%A0%E3%82%8A%E3%80%81%E6%97%A5%E5%B8%B8%E3%82%92%E5%BF%98%E3%82%8C%E3%81%A6%E3%81%97%E3%81%BE%E3%81%84%E3%81%9D%E3%81%86%E3%81%A7%E3%81%99%E3%81%AD%E3%80%82%E3%83%95%E3%83%B4%E3%82%A1%E3%83%95%E3%82%A7%E3%83%B3%E3%83%95%E3%82%B7%E3%81%AF%E3%83%90%E3%83%B3%E3%82%AC%E3%83%AD%E3%83%BC%E3%81%AB%E3%83%97%E3%83%A9%E3%82%A4%E3%83%99%E3%83%BC%E3%83%88%E3%83%97%E3%83%BC%E3%83%AB%E3%81%8C%E4%BB%98%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%81%AE%E3%81%A7%E3%80%81%E6%B5%B7%E3%81%A7%E9%81%8A%E3%81%B6%E3%81%AE%E3%81%AB%E7%96%B2%E3%82%8C%E3%81%9F%E3%82%89%E3%80%81%E3%83%97%E3%83%BC%E3%83%AB%E3%81%A7%E3%81%AE%E3%82%93%E3%81%B3%E3%82%8A%E3%81%99%E3%82%8B%E3%81%93%E3%81%A8%E3%81%8C%E5%87%BA%E6%9D%A5%E3%82%8B%E3%82%93%E3%81%A7%E3%81%99%E3%82%88%EF%BC%81%E8%89%AF%E3%81%84%E6%84%8F%E5%91%B3%E3%81%A7%E4%BD%95%E3%82%82%E3%81%AA%E3%81%84%E3%80%81%E6%A5%B5%E4%B8%8A%E3%81%AE%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%82%B9%E3%83%86%E3%82%A4%E3%81%A7%E3%81%99%E3%82%88%E3%81%AD%E3%80%82%E3%83%A2%E3%83%AB%E3%83%87%E3%82%A3%E3%83%96%E3%81%A7%E5%88%9D%E3%81%AE%E3%82%A2%E3%83%B3%E3%83%80%E3%83%BC%E3%82%A6%E3%82%A9%E3%83%BC%E3%82%BF%E3%83%BC%E3%82%B9%E3%83%91%E3%81%AF%E3%80%81%E3%81%BE%E3%82%8B%E3%81%A7%E7%AB%9C%E5%AE%AE%E5%9F%8E%E3%81%AB%E3%81%84%E3%82%8B%E3%81%BF%E3%81%9F%E3%81%84%E3%81%AA%E6%B0%97%E5%88%86%E3%81%AB%E3%81%95%E3%81%9B%E3%81%A6%E3%81%8F%E3%82%8C%E3%81%BE%E3%81%99%E3%80%82%E6%B5%B7%E4%B8%AD%E3%82%92%E6%BC%82%E3%81%86%E9%AD%9A%E3%81%9F%E3%81%A1%E3%82%92%E8%A6%8B%E3%81%AA%E3%81%8C%E3%82%89%E5%8F%97%E3%81%91%E3%82%8B%E3%83%9E%E3%83%83%E3%82%B5%E3%83%BC%E3%82%B8%E3%81%AF%E3%80%81%E8%B4%85%E6%B2%A2%E3%81%9D%E3%81%AE%E3%82%82%E3%81%AE%EF%BC%81%E7%A5%9E%E7%A7%98%E7%9A%84%E3%81%AA%E3%83%AA%E3%83%A9%E3%82%AF%E3%82%BC%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E4%BD%93%E9%A8%93%E3%81%A7%E3%81%99%E3%82%88%E3%80%82%E6%9C%80%E5%85%88%E7%AB%AF%E3%81%AE%E3%82%B9%E3%83%91%E3%83%86%E3%82%AF%E3%83%8E%E3%83%AD%E3%82%B8%E3%83%BC%E3%81%A8%E3%80%81%E6%9C%80%E6%96%B0%E3%81%AE%E3%82%A6%E3%82%A9%E3%83%BC%E3%82%BF%E3%83%BC%E3%83%86%E3%83%A9%E3%83%94%E3%83%BC%E3%81%AE%E7%B5%84%E3%81%BF%E5%90%88%E3%82%8F%E3%81%9B%E3%82%92%E5%A0%AA%E8%83%BD%E3%81%97%E3%81%A6%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84%E3%81%AD%E3%80%82%E3%83%95%E3%82%A3%E3%83%83%E3%83%88%E3%83%8D%E3%82%B9%E3%83%88%E3%83%AC%E3%83%BC%E3%83%8B%E3%83%B3%E3%82%B0%E3%80%81%E3%83%A8%E3%82%AC%E3%80%81%E5%80%8B%E5%88%A5%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0%E3%82%82%E3%81%82%E3%82%8B%E3%81%AE%E3%81%A7%E3%80%81%E8%87%AA%E5%88%86%E3%81%AB%E5%90%88%E3%82%8F%E3%81%9B%E3%81%9F%E3%83%AA%E3%83%A9%E3%82%AF%E3%82%BC%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E4%BD%93%E9%A8%93%E3%81%97%E3%81%9F%E3%81%84%E3%81%A7%E3%81%99%E3%81%AD%E3%80%82%E3%81%BE%E3%81%9F%E3%80%81%E3%81%93%E3%81%A1%E3%82%89%E3%81%AE%E6%B0%B4%E4%B8%AD%E3%82%B9%E3%83%91%E3%81%AF%E3%80%81%E3%82%A6%E3%82%A8%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E3%82%BB%E3%83%AC%E3%83%A2%E3%83%8B%E3%83%BC%E3%81%AB%E3%82%82%E5%88%A9%E7%94%A8%E3%81%99%E3%82%8B%E3%81%93%E3%81%A8%E3%81%8C%E5%87%BA%E6%9D%A5%E3%82%8B%E3%81%AE%E3%81%A7%E3%81%BE%E3%81%99%E3%82%88%EF%BC%81%E6%A5%BD%E3%81%97%E3%81%BF&from=auto&to=cht',{read_timeout: 1})

    response = open('http://10.33.82.89/help')
    puts response.read
  end
rescue TimeoutError => e
  puts e.message
rescue => e
  # その他の例外処理
end


# begin
# #response = open('http://api.fanyi.baidu.com/api/trans/vip/translate?appid=20160126000009372&salt=1435660281&sign=c22bab7d5eb0bc3bef9e333d1d8e19ab&q=%E7%BE%8E%E5%91%B3%E3%81%97%E3%81%9D%E3%81%86%EF%BC%81%E3%81%A9%E3%81%86%E3%82%82%E3%81%82%E3%82%8A%E3%81%8C%E3%81%A8%E3%81%86%E3%81%94%E3%81%96%E3%81%84%E3%81%BE%E3%81%99%EF%BC%81%EF%BC%81%EF%BC%81&from=auto&to=cht&from=jp&to=cht')
#
# #response = open('http://ope.dev-melpy.me/help',{read_timeout: 1})
#
# response = open('http://10.33.82.89/help',{read_timeout: 1})
# #response = open('http://api.fanyi.baidu.com/api/trans/vip/translate?appid=20160126000009372&salt=1435660281&sign=cf887eddd1324c03aeed8d0aa172d4ac&q=%E4%BB%8A%E5%9B%9E%E3%81%94%E7%B4%B9%E4%BB%8B%E3%81%99%E3%82%8B%E3%81%AE%E3%81%AF%E3%80%81%E3%83%A2%E3%83%AB%E3%83%87%E3%82%A3%E3%83%96%E3%81%AB%E3%81%82%E3%82%8B%E2%80%9D%E6%98%9F%E7%A9%BA%E3%81%AB%E6%B5%AE%E3%81%8B%E3%81%B6%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%83%9B%E3%83%86%E3%83%AB%E2%80%9D%E3%80%82%EF%BC%91%E5%91%A8%E3%81%9F%E3%81%A3%E3%81%9F%E3%81%AE%E5%BE%92%E6%AD%A9%EF%BC%91%EF%BC%90%E5%88%86%E3%81%A8%E3%81%84%E3%81%86%E5%B0%8F%E3%81%95%E3%81%AA%E5%B3%B6%E3%81%AB%E5%BB%BA%E3%81%A4%E3%80%81%E6%9C%80%E9%AB%98%E7%B4%9A%E3%81%AE%E3%83%A9%E3%82%B0%E3%82%B8%E3%83%A5%E3%82%A2%E3%83%AA%E3%83%BC%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%83%9B%E3%83%86%E3%83%AB%E3%81%AA%E3%82%93%E3%81%A7%E3%81%99%EF%BC%81%E3%83%8F%E3%83%8D%E3%83%A0%E3%83%BC%E3%83%B3%E3%81%AB%E3%81%AF%E3%82%82%E3%81%A1%E3%82%8D%E3%82%93%E3%80%81%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%81%A7%E6%8C%99%E5%BC%8F%E3%82%82%E3%81%A7%E3%81%8D%E3%82%8B%E3%81%BE%E3%82%8B%E3%81%A7%E5%A4%A9%E5%9B%BD%E3%81%AE%E3%82%88%E3%81%86%E3%81%AA%E3%83%9B%E3%83%86%E3%83%AB%E3%81%A7%E3%81%99%E3%80%82%E3%81%BE%E3%82%8B%E3%81%A7%E6%98%9F%E7%A9%BA%E3%81%AB%E6%B5%AE%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%81%8B%E3%81%AE%E3%82%88%E3%81%86%E3%81%AA%E4%B8%8D%E6%80%9D%E8%AD%B0%E7%A9%BA%E9%96%93%E3%80%82%E3%81%A8%E3%81%A6%E3%82%82%E5%B9%BB%E6%83%B3%E7%9A%84%E3%81%AA%E6%99%AF%E8%89%B2%E3%81%A7%E3%80%81%E5%A4%A2%E3%81%AE%E4%B8%96%E7%95%8C%E3%81%AB%E6%9D%A5%E3%81%9F%E3%82%88%E3%81%86%E3%81%AA%E9%8C%AF%E8%A6%9A%E3%81%AB%E8%A5%B2%E3%82%8F%E3%82%8C%E3%81%BE%E3%81%99%E3%80%82%E5%AE%9F%E3%81%AF%E3%81%93%E3%82%8C%E3%80%81%E5%9C%B0%E9%9D%A2%E3%81%AF%E3%83%97%E3%83%BC%E3%83%AB%E3%81%AB%E3%81%AA%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B%E3%82%93%E3%81%A7%E3%81%99%E3%80%82%E5%BA%95%E6%9D%BF%E3%81%AB%E8%89%B2%E3%81%A8%E3%82%8A%E3%81%A9%E3%82%8A%E3%81%AELED%E3%81%8C%E4%BB%95%E8%BE%BC%E3%81%BE%E3%82%8C%E3%81%A6%E3%81%84%E3%82%8B%E3%81%8B%E3%82%89%E3%81%AA%E3%82%93%E3%81%A7%E3%81%99%E3%81%8C%E3%80%81%E5%AE%87%E5%AE%99%E7%A9%BA%E9%96%93%E3%81%AB%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB%E3%81%A8%E3%82%A4%E3%82%B9%E3%81%8C%E6%BC%82%E3%81%A3%E3%81%A6%E3%81%84%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB%E8%A6%8B%E3%81%88%E3%81%A6%E3%81%97%E3%81%BE%E3%81%84%E3%81%BE%E3%81%99%E3%81%AD%E3%80%82%E3%81%93%E3%81%AE%E3%83%9B%E3%83%86%E3%83%AB%E3%81%AF%E3%80%8C%E3%83%95%E3%83%B4%E3%82%A1%E3%83%95%E3%82%A7%E3%83%B3%E3%83%95%E3%82%B7(Huvafen%20Fushi)%E3%80%8D%E3%80%82%E7%8F%BE%E5%9C%B0%E3%81%AE%E8%A8%80%E8%91%89%E3%81%A7%E3%80%8C%E5%A4%A2%E3%81%AE%E5%B3%B6%E3%80%8D%E3%81%AE%E6%84%8F%E5%91%B3%E3%80%82%E3%81%9D%E3%81%AE%E5%90%8D%E5%89%8D%E3%81%AB%E3%81%B4%E3%81%A3%E3%81%9F%E3%82%8A%E3%81%AE%E6%A5%B5%E4%B8%8A%E3%81%AE%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%81%AF%E3%80%81%E3%81%93%E3%81%93%E3%81%A7%E3%81%97%E3%81%8B%E5%91%B3%E3%82%8F%E3%81%88%E3%81%AA%E3%81%84%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E6%B0%97%E5%88%86%E3%82%92%E6%BA%80%E5%96%AB%E3%81%95%E3%81%9B%E3%81%A6%E3%81%8F%E3%82%8C%E3%82%8B%E5%A0%B4%E6%89%80%E3%81%A7%E3%81%99%E3%80%82%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%97%E3%83%BC%E3%83%AB%E3%81%AE%E3%81%B2%E3%81%A8%E3%81%A4%E3%82%84%E3%80%81%E3%83%A9%E3%82%B0%E3%83%BC%E3%83%B3%E3%83%90%E3%83%B3%E3%82%AC%E3%83%AD%E3%83%BC%E3%81%AE%E3%83%97%E3%83%A9%E3%82%A4%E3%83%99%E3%83%BC%E3%83%88%E3%83%97%E3%83%BC%E3%83%AB%E3%81%AF%E3%80%81%E3%81%BE%E3%82%8B%E3%81%A7%E6%B5%B7%E3%81%AE%E4%B8%8A%E3%81%AB%E6%B5%AE%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%82%88%E3%81%86%E3%81%AA%E3%80%81%E3%81%A8%E3%81%A6%E3%82%82%E9%96%8B%E6%94%BE%E7%9A%84%E3%81%AA%E3%83%97%E3%83%BC%E3%83%AB%E3%81%A7%E3%81%99%E3%80%82%E3%83%97%E3%83%BC%E3%83%AB%E3%81%8C%E6%B5%B7%E3%81%B8%E3%81%A8%E3%80%81%E3%81%BE%E3%81%9F%E3%81%AF%E7%A9%BA%E3%81%B8%E3%81%A8%E7%B6%9A%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB%E8%A6%8B%E3%81%88%E3%81%BE%E3%81%99%E3%81%AD%E3%80%82%E5%BA%83%E3%81%8C%E3%82%8B%E6%B0%B4%E5%B9%B3%E7%B7%9A%E3%82%92%E7%9C%BA%E3%82%81%E3%81%9F%E3%82%8A%E3%80%81%E3%82%B5%E3%83%B3%E3%82%BB%E3%83%83%E3%83%88%E3%82%92%E6%A5%BD%E3%81%97%E3%82%93%E3%81%A0%E3%82%8A%E3%80%81%E6%97%A5%E5%B8%B8%E3%82%92%E5%BF%98%E3%82%8C%E3%81%A6%E3%81%97%E3%81%BE%E3%81%84%E3%81%9D%E3%81%86%E3%81%A7%E3%81%99%E3%81%AD%E3%80%82%E3%83%95%E3%83%B4%E3%82%A1%E3%83%95%E3%82%A7%E3%83%B3%E3%83%95%E3%82%B7%E3%81%AF%E3%83%90%E3%83%B3%E3%82%AC%E3%83%AD%E3%83%BC%E3%81%AB%E3%83%97%E3%83%A9%E3%82%A4%E3%83%99%E3%83%BC%E3%83%88%E3%83%97%E3%83%BC%E3%83%AB%E3%81%8C%E4%BB%98%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%E3%81%AE%E3%81%A7%E3%80%81%E6%B5%B7%E3%81%A7%E9%81%8A%E3%81%B6%E3%81%AE%E3%81%AB%E7%96%B2%E3%82%8C%E3%81%9F%E3%82%89%E3%80%81%E3%83%97%E3%83%BC%E3%83%AB%E3%81%A7%E3%81%AE%E3%82%93%E3%81%B3%E3%82%8A%E3%81%99%E3%82%8B%E3%81%93%E3%81%A8%E3%81%8C%E5%87%BA%E6%9D%A5%E3%82%8B%E3%82%93%E3%81%A7%E3%81%99%E3%82%88%EF%BC%81%E8%89%AF%E3%81%84%E6%84%8F%E5%91%B3%E3%81%A7%E4%BD%95%E3%82%82%E3%81%AA%E3%81%84%E3%80%81%E6%A5%B5%E4%B8%8A%E3%81%AE%E3%83%AA%E3%82%BE%E3%83%BC%E3%83%88%E3%82%B9%E3%83%86%E3%82%A4%E3%81%A7%E3%81%99%E3%82%88%E3%81%AD%E3%80%82%E3%83%A2%E3%83%AB%E3%83%87%E3%82%A3%E3%83%96%E3%81%A7%E5%88%9D%E3%81%AE%E3%82%A2%E3%83%B3%E3%83%80%E3%83%BC%E3%82%A6%E3%82%A9%E3%83%BC%E3%82%BF%E3%83%BC%E3%82%B9%E3%83%91%E3%81%AF%E3%80%81%E3%81%BE%E3%82%8B%E3%81%A7%E7%AB%9C%E5%AE%AE%E5%9F%8E%E3%81%AB%E3%81%84%E3%82%8B%E3%81%BF%E3%81%9F%E3%81%84%E3%81%AA%E6%B0%97%E5%88%86%E3%81%AB%E3%81%95%E3%81%9B%E3%81%A6%E3%81%8F%E3%82%8C%E3%81%BE%E3%81%99%E3%80%82%E6%B5%B7%E4%B8%AD%E3%82%92%E6%BC%82%E3%81%86%E9%AD%9A%E3%81%9F%E3%81%A1%E3%82%92%E8%A6%8B%E3%81%AA%E3%81%8C%E3%82%89%E5%8F%97%E3%81%91%E3%82%8B%E3%83%9E%E3%83%83%E3%82%B5%E3%83%BC%E3%82%B8%E3%81%AF%E3%80%81%E8%B4%85%E6%B2%A2%E3%81%9D%E3%81%AE%E3%82%82%E3%81%AE%EF%BC%81%E7%A5%9E%E7%A7%98%E7%9A%84%E3%81%AA%E3%83%AA%E3%83%A9%E3%82%AF%E3%82%BC%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E4%BD%93%E9%A8%93%E3%81%A7%E3%81%99%E3%82%88%E3%80%82%E6%9C%80%E5%85%88%E7%AB%AF%E3%81%AE%E3%82%B9%E3%83%91%E3%83%86%E3%82%AF%E3%83%8E%E3%83%AD%E3%82%B8%E3%83%BC%E3%81%A8%E3%80%81%E6%9C%80%E6%96%B0%E3%81%AE%E3%82%A6%E3%82%A9%E3%83%BC%E3%82%BF%E3%83%BC%E3%83%86%E3%83%A9%E3%83%94%E3%83%BC%E3%81%AE%E7%B5%84%E3%81%BF%E5%90%88%E3%82%8F%E3%81%9B%E3%82%92%E5%A0%AA%E8%83%BD%E3%81%97%E3%81%A6%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84%E3%81%AD%E3%80%82%E3%83%95%E3%82%A3%E3%83%83%E3%83%88%E3%83%8D%E3%82%B9%E3%83%88%E3%83%AC%E3%83%BC%E3%83%8B%E3%83%B3%E3%82%B0%E3%80%81%E3%83%A8%E3%82%AC%E3%80%81%E5%80%8B%E5%88%A5%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0%E3%82%82%E3%81%82%E3%82%8B%E3%81%AE%E3%81%A7%E3%80%81%E8%87%AA%E5%88%86%E3%81%AB%E5%90%88%E3%82%8F%E3%81%9B%E3%81%9F%E3%83%AA%E3%83%A9%E3%82%AF%E3%82%BC%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E4%BD%93%E9%A8%93%E3%81%97%E3%81%9F%E3%81%84%E3%81%A7%E3%81%99%E3%81%AD%E3%80%82%E3%81%BE%E3%81%9F%E3%80%81%E3%81%93%E3%81%A1%E3%82%89%E3%81%AE%E6%B0%B4%E4%B8%AD%E3%82%B9%E3%83%91%E3%81%AF%E3%80%81%E3%82%A6%E3%82%A8%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E3%82%BB%E3%83%AC%E3%83%A2%E3%83%8B%E3%83%BC%E3%81%AB%E3%82%82%E5%88%A9%E7%94%A8%E3%81%99%E3%82%8B%E3%81%93%E3%81%A8%E3%81%8C%E5%87%BA%E6%9D%A5%E3%82%8B%E3%81%AE%E3%81%A7%E3%81%BE%E3%81%99%E3%82%88%EF%BC%81%E6%A5%BD%E3%81%97%E3%81%BF&from=auto&to=cht',{read_timeout: 1})
#
# puts response.read
#
# rescue StandardError => e
#   puts e.message
# end
