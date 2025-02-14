#CHALLENGE B: Stranger Things Progression
use_synth  :tech_saws
use_bpm 75


#total sleep = 2
play :c4, amp: 0.1, beat_stretch: 1.1
sleep 0.25
play :e4, amp: 0.1, beat_stretch: 1.1
sleep 0.25
play :g4, amp: 0.3, beat_stretch: 1.1
sleep 0.25
play :b4, amp: 0.3, beat_stretch: 1.1
sleep 0.25
play :c5, amp: 0.5, beat_stretch: 1.1
sleep 0.25
play :b4, amp: 0.5, beat_stretch: 1.1
sleep 0.25
play :g4, amp: 0.7, beat_stretch: 1.1
sleep 0.25
play :e4, amp: 0.7, beat_stretch: 1.1
sleep 0.25

#total sleep = 2
live_loop :strange do
  play :c4
  sleep 0.25
  play :e4, beat_stretch: 1.1
  sleep 0.25
  play :g4, beat_stretch: 1.1
  sleep 0.25
  play :b4, beat_stretch: 1.1
  sleep 0.25
  play :c5, beat_stretch: 1.1
  sleep 0.25
  play :b4, beat_stretch: 1.1
  sleep 0.25
  play :g4, beat_stretch: 1.1
  sleep 0.25
  play :e4, beat_stretch: 1.1
  sleep 0.25
end

sleep 2 #wait here so I can hear ONLY the 1st live_loop
live_loop :tuah do
  sample   :bd_fat, amp: 3, beat_stretch: 0.5
  sleep 0.2
  sample   :bd_fat, amp: 3, beat_stretch: 1
  sleep 1.8
end


sleep 4 #wait here so I can hear ONLY the 1st live_loop
live_loop :podcast do
  sample :ambi_drone, attack: 20, release: 20, amp: 9, beat_stretch: 1.25
  sleep 0.5
end

sleep 8 #wait here so I can hear ONLY the 1st live_loop
live_loop :property do
  sample :ambi_drone, attack: 20, release: 20, amp: 4, beat_stretch: 2.5
  sleep 0.25
end
