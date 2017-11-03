var Module = {
  print: function() {
    return function(text) {
      if (arguments.length > 1) {
        text = Array.prototype.slice.call(arguments).join(' ');
      }
      console.log(text);
    };
  },
  printErr: function(text) {
    if (arguments.length > 1) {
      text = Array.prototype.slice.call(arguments).join(' ');
    }
    console.error(text);
  },
};
