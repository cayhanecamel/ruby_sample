
class Hoge
  def printer(user)
    cnt = 1
    while cnt <= 10000
      puts " #{user}(#{Thread.current.object_id}) ==> #{cnt}"
      cnt += 1
    end
  end
end

t1 = Thread.start do
  Hoge.new.printer("Aさん")
end


t2 = Thread.start do
  Hoge.new.printer("Bさん")
end

t2 = Thread.start do
  Hoge.new.printer("Bさん")
end

# メインスレッドを終わらせない為の無限ループ
 loop do
 end
