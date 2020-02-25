# yelp-business-data_analysis
Final Report:
Extract: Downloaded Yelp data (Business Information and Business Review) from Kaggle which was in JSON format

Transform: Following tranformation was done on the two files
  1> Business Information : took selective columns and filtered our restaurant business only
  2> Business Reviews : Took selective columns and gouped the data by business and ratings. Pivoted the rows to columns
  3> Pulled top 10 reviewed restaurants using Postgres SQL

Loaded: Used Postgres as the database and created two tables
