// init/01_init.js

db = db.getSiblingDB("comments_db");



db.comments.insertMany([
  {
    name: "Fabricio",
    comment: "Comentario Test FP"
  },
  {
    name: "OpenShift",
    comment: "Implementación con OpenShift"
  },
 
]);

print("✅ Database initialized successfully!");
