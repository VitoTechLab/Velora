importScripts("https://www.gstatic.com/firebasejs/10.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: "AIzaSyDKfDUdU1PF6mhSmm1ht-NDQgUHCT9hVW8",
    authDomain: "velora-vlab.firebaseapp.com",
    projectId: "velora-vlab",
    storageBucket: "velora-vlab.firebasestorage.app",
    messagingSenderId: "292141038283",
    appId: "1:292141038283:web:6768e7008d206e2130b94e",
    measurementId: "G-05786E0JX9"
  });

const messaging = firebase.messaging();

messaging.onBackgroundMessage(function(payload) {
  console.log('[firebase-messaging.js] Received background message ', payload);
  const notificationTitle = payload.notification.title;
  const notificationOptions = {
    body: payload.notification.body,
    icon: '/icons/icon-192.png',
  };

  self.registration.showNotification(notificationTitle, notificationOptions);
});
