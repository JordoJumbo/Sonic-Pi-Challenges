# Stranger Things challenge G

use_bpm 160
use_synth :saw

notelist = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]

i = 0

live_loop :stranger_notes do
  8.times do
    with_fx :distortion do
      play notelist[i]
      sleep 0.5
      i = i + 1
    end
  end
  i = 0
end
