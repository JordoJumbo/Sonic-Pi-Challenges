# Around The World - ATC
use_bpm 132

atwIntro = "C:/Users/Jordan_Dominguez/Documents/Audacity/ATC - Around The world studio quality acapella.wav"

lax5 = "C:/Users/Jordan_Dominguez/Documents/Audacity/Around the World La.wav"

noteList = [:e5, :a4, :c5, :e5, :b4, :e4, :g4, :b4, :c5, :f4, :a4, :c5, :d5, :g4, :b4, :d5]

define :atw_music do |a|
  i = 0
  16.times do
    play noteList[i], amp: a
    sleep 0.5
    i = i + 1
  end
end

define :fade_out do |c|
  b = 0.4
  use_synth c
  4.times do
    i = 0
    16.times do
      play noteList[i], amp: b
      sleep 0.5
      i = i + 1
      b = b - 0.00625
    end
  end
end


#"define :atw_bass do" We'll define bass and cymbals next class

live_loop :background_music1 do
  14.times do
    atw_music 0.6
  end
  stop
end

sleep 15.2

sample atwIntro

sleep 29.8

sample :drum_splash_soft, rate: -1, beat_stretch: 3, amp: 2

sleep 2.9

sample lax5

sleep 0.1

live_loop :sound1 do
  96.times do
    sample :bd_ada, amp: 2
    sleep 1
  end
  stop
end

sample :drum_splash_soft, amp: 2

sleep 16

live_loop :cymbal2 do
  16.times do
    sleep 0.5
    sample :drum_cymbal_closed, amp: 0.4
    sleep 0.5
  end
  stop
end

sleep 16


sample :drum_splash_soft, amp: 1

live_loop :background_music2 do
  4.times do
    use_synth :hoover
    atw_music 0.4
  end
  stop
end

live_loop :cymbal1 do
  64.times do
    sleep 0.5
    sample :drum_cymbal_closed, amp: 0.4
    sleep 0.16
    sample :drum_cymbal_closed, amp: 0.4
    sleep 0.34
  end
  stop
end

sleep 32

live_loop :fade_out1 do
  1.times do
    fade_out :hoover
    stop
  end
end

live_loop :fade_out2 do
  1.times do
    fade_out :supersaw
    stop
  end
end

sample :drum_splash_soft, amp: 1
