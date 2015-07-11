class Combs
  def self.find_combinations(dictionary, target)
    target_dict = (1..target.size).map do |step|
      target.split('').combination(step).map(&:join)
    end.flatten 

    joined_dict = target_dict & dictionary

    all_combs = (1..joined_dict.size).map do |step|
      joined_dict.repeated_permutation(step).map do |i|
        i.join(' ') if i.join('') == target
      end
    end.flatten.compact 
  end
end