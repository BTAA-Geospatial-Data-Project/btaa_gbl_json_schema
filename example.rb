require 'json_schemer'
require 'json'

schema = File.read("btaa_gbl_schema.json")
btaa_file = File.read("06e7f566-852a-4914-929d-1bef38132eba.json")
data_hash = JSON.parse(btaa_file)

# Load the JSON schema
schemer = JSONSchemer.schema(schema)

# Test validity of BTAA Example document
puts schemer.valid?(data_hash)

# Output validation
puts schemer.validate(data_hash).to_a
