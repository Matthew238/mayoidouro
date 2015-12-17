# -*- coding: utf-8 -*-
=begin
n:反転数の上限
p(i):反転数iの時のYから出るルートの種類の数
fpy(i):反転上限iまで使った場合のY方向からBに入った場合のYへ抜ける経路数
fpz(i):反転上限iまで使った場合のZ方向からBに入った場合のYへ抜ける経路数
=end
while str = STDIN.gets
  if (/^[0]$|^([+]?[1-9][0-9]*)$/ =~ str) then
    n = str.to_i
    p = 0
    fpy = Array[1, 0, 0]; fpz = Array[0, 1, 0]
    for i in 1..n do
      fpy[2] = fpz[1] + fpy[0]; fpz[2] = fpy[1] + fpz[0]
      p = fpy[2] + p
      fpy[0] = fpy[1]; fpy[1] = fpy[2]
      fpz[0] = fpz[1]; fpz[1] = fpz[2]
    end
    puts p
  else
    puts "Positive integer only!"
  end
end
