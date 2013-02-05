/**
 * Module dependencies.
 */
io = require('socket.io').listen(6655)
io.sockets.on('connection', function(socket) {
    console.log("server!");
    socket.on('message', function(data) {
      console.log("hello from the server side");
    });
    socket.on('velohallo', function(data) {
      socket.broadcast.emit('hallovelo', {
      });
    });
    socket.on('hallo', function(data) {
      console.log("hallo is the key");
    });
  });

console.log('Server running at http://127.0.0.1:6655/');
