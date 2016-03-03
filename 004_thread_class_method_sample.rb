
class Hoge
  def self.printer(user)
    cnt = 1
    while cnt <= 10000
      puts " #{user}(#{Thread.current.object_id}) ==> #{cnt}"
      cnt += 1
    end
  end
end

t1 = Thread.start do
  Hoge.printer("Aさん")
end


t2 = Thread.start do
  Hoge.printer("Bさん")
end


t3 = Thread.start do
  Hoge.printer("Cさん")
end


t4 = Thread.start do
  Hoge.printer("Dさん")
end

# メインスレッドを終わらせない為の無限ループ
 loop do
 end
