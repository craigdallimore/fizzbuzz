function Fizzbuzz() {}
Fizzbuzz.prototype.iterate = function iterate(num) {
    if (num % 3 === 0 && num % 5 === 0) {
        return 'FizzBuzz';
    }
    if (num % 3 === 0) {
        return 'Fizz';
    }
    if (num % 5 === 0) {
        return 'Buzz';
    }
    return num;
};
Fizzbuzz.prototype.run = function run() {
    var i = 0,
        max = 100,
        line = '',
        output = '';

        while (i < max) {
            line = ++i + ': ' + this.iterate(i) + '\n';
            output += line;
        }
        return output;
};


exports.fizzbuzz = new Fizzbuzz();
