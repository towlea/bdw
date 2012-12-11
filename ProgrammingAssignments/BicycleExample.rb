# Bicycle example for bdw / intro to programming class week 3, basics of methods.

# I'm a method without variables
def ride
  "OK, we're rolling..."
end

# I'm a method with variables
def gear_ratio(rear_chainring_gear, front_chainring_gear)
  (front_chainring_gear.to_f / rear_chainring_gear.to_f).round(2)
end

# I'm a method that will later be replaced with a method having the same name
# So I will always be orphaned.  Sad.
def pedal
  "sorry, you'll never reach me"
end

# I'm a method with a default variable
def pedal(cadence = 100)
  "Pedaling at #{cadence} rpms..."
end

def wheel_circumference(wheel_size_in_cm = 700)
  wheel_size_in_cm * 3.14 / 1000
end

def distance_per_pedal_stroke(rear_chainring_gear, front_chainring_gear)
  (gear_ratio(rear_chainring_gear, front_chainring_gear) * wheel_circumference).round(2)
end

def distance_per_minute(meters_per_pedal_stroke, cadence)
  (meters_per_pedal_stroke * cadence).round(2)
end

# I'm a method that calls other methods!
def speed(rear_chainring_gear, front_chainring_gear, cadence)
  meters_per_pedal_stroke   = distance_per_pedal_stroke(rear_chainring_gear, front_chainring_gear)
  meters_per_minute = distance_per_minute(meters_per_pedal_stroke, cadence)
  meters_per_hour   = ((meters_per_minute * 60) / 1000).round(1)
end

def to_mph(kmph)
  (kmph / 1.609).round(1)
end

# I return a boolean
def fast?(speed, fast_speed = 30)
  to_mph(speed) > fast_speed
end

# I'm a method that accepts any number of variables
def service_parts(*args)
  "Servicing the following parts\n#{args.join("\n")}"
end

def method_missing(m, *args, &block)
  puts "You called the method #{m}.  Sorry I'm not aware of that one.  Bummer."
end

rear_chainring_gear        = 23
front_chainring_gear       = 39
cadence                    = 110
meters_per_pedal_stroke    = distance_per_pedal_stroke(rear_chainring_gear, front_chainring_gear)
meters_per_minute          = distance_per_minute(meters_per_pedal_stroke, cadence)
current_speed              = speed(rear_chainring_gear, front_chainring_gear, cadence)

puts ride

puts pedal

puts pedal cadence

puts "Your wheel circumference is #{wheel_circumference} meters."

puts "Your gear ratio in a 39X23 is #{gear_ratio(rear_chainring_gear, front_chainring_gear)}."

puts "That means you move about #{distance_per_pedal_stroke(rear_chainring_gear, front_chainring_gear)} meters per pedal stroke."

puts "So if your cadence (rpms) is #{cadence}, then you move about #{distance_per_minute(meters_per_pedal_stroke, cadence)} meters per minute."

puts "That means your speed is roughly #{current_speed}km/h or #{to_mph(current_speed)}mp/h"

puts "Are we going fast? #{fast?(current_speed)}"

puts "\n"

puts service_parts "bottom bracket", "chain", "headset"

puts "\n"