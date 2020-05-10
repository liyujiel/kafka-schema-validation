# Produce a record with one filed
kafka-avro-console-producer --broker-list localhost:9092 --topic schema-validation-test --property schema.registry.url=http://127.0.0.1:8081 --property value.schema='{"name":"myrocrd","type": "record","fields":[{"name":"t1","type":"string"}]}'

# Test sample
{"t1": "value1"}
{"t1": "value2"}
# Trigger error with key
{"t2": "value3"}
# Trigger error with value
{"t1": 1}