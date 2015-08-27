  trains = { 
      'N' => ['ts', '34', '28-n', '23-n', 'us', '8-n'],
      'L' => ['8-L', '6', 'us', '3', '1'],
      '6' => ['gc', '33', '28-6', '23-6', 'us', 'ap']
    }

puts "What train are you riding #{trains.keys}?"
train1 = gets.chomp.capitalize

puts "Where are you starting #{trains[train1]}?"
start = gets.chomp.downcase

start_index = trains[train1].index(start)

puts "What train are you arriving with #{trains.keys}?"
train2 = gets.chomp.capitalize.downcase

puts "Where are you finishing your journey #{trains[train2]}?"
stop = gets.chomp

stop_index = trains[train2].index(stop) 

same_train_answer = start_index - stop_index 

multi_train_start_index = trains[train1].index('us') - start_index
multi_train_stop_index =  trains[train2].index('us') - stop_index
multi_train_answer = multi_train_start_index.abs + multi_train_stop_index.abs

if train1 == train2
  puts "You have #{same_train_answer.abs} stops to reach your destination"
else
  puts "You have #{multi_train_answer} stops to reach your destination"

end







 


