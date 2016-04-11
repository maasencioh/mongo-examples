mkdir data
mkdir data/z1
mkdir data/z2
mkdir data/z3

mongod --fork --logpath a.log --smallfiles --oplogSize 50 --port 27001 --dbpath data/z1 --replSet z
mongod --fork --logpath b.log --smallfiles --oplogSize 50 --port 27002 --dbpath data/z2 --replSet z
mongod --fork --logpath c.log --smallfiles --oplogSize 50 --port 27003 --dbpath data/z3 --replSet z
