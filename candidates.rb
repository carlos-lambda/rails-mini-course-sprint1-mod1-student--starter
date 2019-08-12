
# 1. Create candidates.rb file

# 2. Create 3 different hashes based on the table of data above and assign them to variables jane, sara, and jason (use symbol keys and no hashrockets).
jane = {
    first_name: 'Jane',
    last_name: 'Doe',
    level: :senior_level,
    age: 30,
    occupation: 'Software Developer',
    employed: true,
    current_salary: 125000.00,
    languages: ['Ruby', 'JavaScript', 'Go']
}
sara = {
    first_name: 'Sara',
    last_name: 'Smith',
    level: :mid_level,
    age: 26,
    occupation: 'Software Developer',
    employed: true,
    current_salary: 80000.00,
    languages: ['Ruby', 'Python']
}
jason = {
    first_name: 'Jason',
    last_name: 'Gray',
    level: :entry_level,
    age: 23,
    occupation: 'Student',
    employed: false,
    current_salary: 0.00,
    languages: ['c++', 'Python']
}

arr_candidates = [ jane, sara, jason ]

# arr_candidates.each {|candidate| puts candidate}

def average_age(people)
    ages = people.map {|person| person[:age]}
    ave = ages.reduce(0) do |sum, age|
        sum = sum + age
        sum
    end
    puts ave / people.length.to_f
end

average_age(arr_candidates)

def language_screening(people, language)
    result = people.select do |person|
        cased = person[:languages].map {|p| p.downcase }
            cased.include? language.downcase
        end
    puts result
end

language_screening(arr_candidates, 'Python')