db.createUser({
  user: 'botuser',
  pwd: 'botpassword',
  roles: [
    {
      role: 'readWrite',
      db: 'chatbot',
    },
  ],
});

db.createCollection('conversations');
