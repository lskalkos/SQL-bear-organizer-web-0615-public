def selects_all_female_bears_return_name_and_age 
  # "Write your SQL query here"
  <<-SQL
    SELECT name, age FROM bears WHERE gender = 'F';
  SQL
end

def selects_all_bears_names_and_orders_in_alphabetical_order 
  # "Write your SQL query here"
  <<-SQL
    SELECT name FROM bears ORDER BY name ASC;
  SQL
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest 
  # "Write your SQL query here"
  <<-SQL
    SELECT name, age FROM bears WHERE alive = "TRUE" ORDER BY age ASC;
  SQL
end

def selects_oldest_bear_and_returns_name_and_age 
  # "Write your SQL query here"
  <<-SQL
    SELECT name, age FROM bears WHERE age IN (SELECT DISTINCT max(age) FROM bears) LIMIT 1;
  SQL
end

def select_youngest_bear_and_returns_name_and_age 
  # "Write your SQL query here"
  <<-SQL
    SELECT name, age FROM bears WHERE age IN (SELECT DISTINCT min(age) FROM bears) LIMIT 1;
  SQL
end

def selects_most_prominent_color_and_returns_with_count
  # "Write your SQL query here"
  <<-SQL
  SELECT color, count(color) AS total_each_color FROM bears GROUP BY color ORDER BY total_each_color DESC LIMIT 1;
  SQL

end

def counts_number_of_bears_with_goofy_temperments 
  # "Write your SQL query here"
  <<-SQL
  SELECT count(temperament) FROM bears WHERE temperament = 'goofy';
  SQL
end

def selects_bear_that_killed_Tim 
  # "Write your SQL query here"
  <<-SQL
  SELECT * FROM bears WHERE name IS NULL;
  SQL
end