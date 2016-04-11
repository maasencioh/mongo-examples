mkdir a0
mkdir a1
mkdir a2
mkdir b0
mkdir b1
mkdir b2
mkdir c0
mkdir c1
mkdir c2
mkdir d0
mkdir d1
mkdir d2

mkdir cfg0
mkdir cfg1
mkdir cfg2

# config servers
mongod --configsvr -dbpath cfg0 --port 26050 --fork --logpath log.cfg0 --logappend
mongod --configsvr -dbpath cfg1 --port 26051 --fork --logpath log.cfg1 --logappend
mongod --configsvr -dbpath cfg2 --port 26052 --fork --logpath log.cfg2 --logappend

# shard servers
mongod --shardsvr --replSet a --dbpath a0 --logpath log.a0 --port 27000 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet a --dbpath a1 --logpath log.a1 --port 27001 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet a --dbpath a2 --logpath log.a2 --port 27002 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet b --dbpath b0 --logpath log.b0 --port 27100 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet b --dbpath b1 --logpath log.b1 --port 27101 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet b --dbpath b2 --logpath log.b2 --port 27102 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet c --dbpath c0 --logpath log.c0 --port 27200 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet c --dbpath c1 --logpath log.c1 --port 27201 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet c --dbpath c2 --logpath log.c2 --port 27202 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet d --dbpath d0 --logpath log.d0 --port 27300 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet d --dbpath d1 --logpath log.d1 --port 27301 --fork --logappend --smallfiles --oplogSize 50
mongod --shardsvr --replSet d --dbpath d2 --logpath log.d2 --port 27302 --fork --logappend --smallfiles --oplogSize 50

# mongos processes
mongos --configdb maasencioh:26050,maasencioh:26051,maasencioh:26052 --fork --logappend --logpath log.mongos0
mongos --configdb maasencioh:26050,maasencioh:26051,maasencioh:26052 --fork --logappend --logpath log.mongos1 --port 26061
mongos --configdb maasencioh:26050,maasencioh:26051,maasencioh:26052 --fork --logappend --logpath log.mongos2 --port 26062
mongos --configdb maasencioh:26050,maasencioh:26051,maasencioh:26052 --fork --logappend --logpath log.mongos3 --port 26063
