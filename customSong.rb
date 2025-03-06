use_bpm 132

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
  14.times do
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

sleep 32

live_loop :background_music3 do
  use_synth :supersaw
  atw_music 0.4
end

sample :drum_splash_soft, amp: 1
