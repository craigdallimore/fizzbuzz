# "Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number
# and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”.
chai = require 'chai'
sinon = require 'sinon'
sinonChai = require 'sinon-chai'

assert = chai.assert
expect = chai.expect
should = chai.should()
chai.use sinonChai

fizzbuzz = require('./fizzbuzz.js').fizzbuzz

describe 'fizzbuzz', ->

    it 'should be an object', ->
        expect(fizzbuzz).to.be.an 'object'

    it 'should have an \'iterate\' method', ->
        fizzbuzz.should.have.property 'iterate'
        fizzbuzz.iterate.should.be.a 'function'

    it 'prints \'1\' on the first iteration', ->
        expect(fizzbuzz.iterate 1).to.equal 1

    it 'prints \'2\' on the second iteration', ->
        expect(fizzbuzz.iterate 2).to.equal 2

    it 'prints \'Fizz\' on the third iteration', ->
        expect(fizzbuzz.iterate 3).to.equal 'Fizz'

    it 'prints \'4\' on the fourth iteration', ->
        expect(fizzbuzz.iterate 4).to.equal 4

    it 'prints \'Buzz\' on the fifth iteration', ->
        expect(fizzbuzz.iterate 5).to.equal 'Buzz'

    it 'prints \'Fizz\' on multiples of three', ->
        expect(fizzbuzz.iterate 6).to.equal 'Fizz'
        expect(fizzbuzz.iterate 9).to.equal 'Fizz'
        expect(fizzbuzz.iterate 12).to.equal 'Fizz'
        expect(fizzbuzz.iterate 33).to.equal 'Fizz'
        expect(fizzbuzz.iterate 66).to.equal 'Fizz'

    it 'prints \'Buzz\' on multiples of five', ->
        expect(fizzbuzz.iterate 10).to.equal 'Buzz'
        expect(fizzbuzz.iterate 25).to.equal 'Buzz'
        expect(fizzbuzz.iterate 35).to.equal 'Buzz'
        expect(fizzbuzz.iterate 55).to.equal 'Buzz'
        expect(fizzbuzz.iterate 70).to.equal 'Buzz'

    it 'prints \'FizzBuzz\' on iterations divisible by three and five', ->
        expect(fizzbuzz.iterate 15).to.equal 'FizzBuzz'
        expect(fizzbuzz.iterate 30).to.equal 'FizzBuzz'
        expect(fizzbuzz.iterate 45).to.equal 'FizzBuzz'
        expect(fizzbuzz.iterate 60).to.equal 'FizzBuzz'
        expect(fizzbuzz.iterate 75).to.equal 'FizzBuzz'

    it 'iterates up to 100', ->
        expect(fizzbuzz).to.have.property 'run'
        expect(fizzbuzz.run()).to.contain '100: '


        
