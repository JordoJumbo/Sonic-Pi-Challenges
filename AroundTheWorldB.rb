# Around The World - Daft Punk
use_bpm 121.3

atwIntro = "C:/Users/Jordan_Dominguez/Documents/Audacity/ATC - Around The world studio quality acapella.wav"

noteList = [:d4,:e4,:c5,:a4,:g4,:g4,:a4,:b4,:e4,:e4,:e5,:d5,:b4,:a4,:g4,:g4,:a4,:e4]
sleepList = [0.25,0.75,1,0.5,1,0.5,0.25,3.75,0.25,0.25,0.5,0.5,0.5,0.5,1,0.5,0.25,0.25]

define :atw_intro do |a|
  use_synth :dpulse
  play :e5, amp: a
  sleep 0.5
  play :d5, amp: a
  sleep 0.5
  play :b4, amp: a
  sleep 0.5
  play :a4, amp: a
  sleep 1
  play :a4, amp: a
  sleep 1
  play :a4, amp: a
  sleep 0.25
  play :g4, amp: a
  sleep 0.25
end

define :atw_bass do
  use_synth :fm
  with_fx :mono do
    play :e3, beat_stretch: 0.2, amp: 0.5
    sleep 0.15
    play :fs3, beat_stretch: 0.5, amp: 0.85
    sleep 0.35
    play :e3, beat_stretch: 0.5, amp: 0.85
    sleep 0.5
    play :d3, beat_stretch: 0.5, amp: 0.85
    sleep 0.5
    play :c3, beat_stretch: 0.5, amp: 0.85
    sleep 0.5
    play :b2, beat_stretch: 0.5, amp: 0.85
    sleep 0.5
    play :a2, amp: 0.85
    sleep 0.5
    play :g2, amp: 0.85
    sleep 0.5
    play :a2, amp: 0.85
    sleep 0.5
  end
end

define :atw_main do
  sleep 3.5
  i = 0
  18.times do
    play noteList[i], amp: 0.85
    sleep sleepList[i]
    i = i + 1
  end
end

define :atw_bass2 do
  use_synth :fm
  with_fx :mono do
    play :a2, amp: 0.85
    sleep 1
    play :a2, amp: 0.85
    sleep 1
    play :a2, amp: 0.85
    sleep 1
    play :a2, amp: 0.85
    sleep 0.5
    play :b2, amp: 0.85
    sleep 0.25
    play :c3, amp: 0.85
    sleep 0.25
   
    play :c3, amp: 0.85
    sleep 1
    play :c3, amp: 0.85
    sleep 1
    play :c3, amp: 0.85
    sleep 1
    play :c3, amp: 0.85
    sleep 0.5
    play :d3, amp: 0.85
    sleep 0.25
    play :e3, amp: 0.85
    sleep 0.25
   
    play :e3, amp: 0.85
    sleep 1
    play :e3, amp: 0.85
    sleep 1
    play :e3, amp: 0.85
    sleep 1
    play :e3, amp: 0.85
    sleep 1
   
    play :f3, beat_stretch: 0.3, amp: 0.85
    sleep 0.5
    play :e3, beat_stretch: 0.3, amp: 0.85
    sleep 0.5
    play :d3, beat_stretch: 0.3, amp: 0.85
    sleep 0.5
    play :c3, beat_stretch: 0.3, amp: 0.85
    sleep 0.5
    play :b2, beat_stretch: 0.3, amp: 0.85
    sleep 0.5
    play :a2, amp: 0.85
    sleep 0.5
    play :g2, amp: 0.85
    sleep 0.5
    play :a2, amp: 0.85
    sleep 0.5
   
  end
end

live_loop :start_melody1 do
  12.times do
    atw_bass
  end
  stop
end

live_loop :sound1 do
  176.times do
    sample :bd_tek
    sleep 0.45
    sample :drum_cymbal_closed
    sleep 0.55
  end
  stop
end

live_loop :sound2 do
  with_fx :eq do
    88.times do
      sample :drum_snare_soft
      sleep 2
    end
  end
  stop
end

sleep 20

a = 0.05

live_loop :start_melody2 do
  with_fx :reverb do
    7.times do
      atw_intro a
      a = a + 0.10
    end
    stop
  end
end

use_synth :dpulse
play :e5, amp: a
sleep 0.5
play :d5, amp: a
sleep 0.5
play :b4, amp: a
sleep 0.5
play :a4, amp: a
sleep 1
play :a4, amp: a
sleep 1
play :a4, amp: a
sleep 0.25
play :e4, amp: a
sleep 0.25

sleep 24

live_loop :main_melody do
  8.times do
    atw_main
  end
  stop
end

live_loop :main_bass do
  8.times do
    atw_bass2
  end
  stop
end

sleep 64

live_loop :atw_voice do
  16.times do
    atwIntro
    sleep 8
  end
  stop
end
