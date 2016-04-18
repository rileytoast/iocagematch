path = require 'path'
Promise = require 'bluebird'
fs = Promise.promisifyAll require 'fs'

dbPath = path.join __dirname, '../databases/db.json'
schemaPath = path.join __dirname, '../databases/schema.json'

exports.getData = ->
  fs.readFileAsync dbPath, 'utf8'
    .then (data) ->
      JSON.parse data
    .catch (e) ->
      console.log 'Error reading database', e

exports.getSchema = ->
  fs.readFileAsync schemaPath, 'utf8'
    .then (data) ->
      JSON.parse data
    .catch (e) ->
      console.log 'Error reading database', e
