
use_bpm 130

lax5 = ""

define :atw_music do |a|
  play :e5, amp: a
  sleep 0.5
  play :a4, amp: a
  sleep 0.5
  play :c5, amp: a
  sleep 0.5
  play :e5, amp: a
  sleep 0.5
  play :b4, amp: a
  sleep 0.5
  play :e4, amp: a
  sleep 0.5
  play :g4, amp: a
  sleep 0.5
  play :b4, amp: a
  sleep 0.5
  
  play :c5, amp: a
  sleep 0.5
  play :f4, amp: a
  sleep 0.5
  play :a4, amp: a
  sleep 0.5
  play :c5, amp: a
  sleep 0.5
  play :d5, amp: a
  sleep 0.5
  play :g4, amp: a
  sleep 0.5
  play :b4, amp: a
  sleep 0.5
  play :d5, amp: a
  sleep 0.5
end

#"define :atw_bass do" We'll define bass and cymbals next class

live_loop :background_music1 do
  10.times do
    atw_music 0.6
  end
  stop
end

sleep 45

sample :drum_splash_soft, rate: -1, beat_stretch: 3, amp: 2

sleep 3

live_loop :sound1 do
  sample :bd_ada, amp: 2
  sleep 1
end

sample :drum_splash_soft, amp: 2

sleep 16

live_loop :cymbal2 do
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.4
  sleep 0.5
end

sleep 16


sample :drum_splash_soft, amp: 2

live_loop :background_music2 do
  use_synth :beep
  atw_music 0.4
end

live_loop :background_music3 do
  use_synth :hoover
  atw_music 0.4
end

live_loop :cymbal1 do
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.4
  sleep 0.16
  sample :drum_cymbal_closed, amp: 0.4
  sleep 0.34
end
