import * as functions from "firebase-functions";

// Fungsi Hello World sederhana
export const helloWorld = functions.https.onRequest((req, res) => {
  res.send("Hello from Firebase v1!");
});
