// init/01_init.js

db = db.getSiblingDB("comments_db");



db.comments.insertMany([
  {
    author: "Fabricio",
    text: "Comentario Test FP"
  },
  {
    author: "OpenShift",
    text: "Implementación con OpenShift"
  },
 
]);

print("✅ Database initialized successfully!");
