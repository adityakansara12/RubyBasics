states = {
  "Gujarat" => "GJ",
  "Maharastra" => "MH",
  "Rajasthan" => "RJ",
  :Madhyapradesh => "MP",
  2 => "TN"
}

puts states
puts states["Gujarat"]

days = {
  monday: "MON",
  tuesday: "TUE",
  wednesday: "WED",
  thursday: "THU",
  friday: "FRI",
  saturday: "SAT",
  sunday: "SUN",
}

p days.keys
p days.values
p days[:wednesday]
p days.length
# p days.clear
p days.delete(:tuesday)
# p days.keys
p days.keys
p days.empty?
p days.has_key?(:wednesday)
p days.has_value?("WED")
p days.member?(:friday)
p days.invert
p days.to_a
p days.flatten
