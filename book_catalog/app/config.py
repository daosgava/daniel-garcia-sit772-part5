import os

# Set the database URL
DATABASE_URL = os.getenv('DATABASE_URL', 'postgresql://user:password@host:port/dbname')
