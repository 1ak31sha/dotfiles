Karate

  ### editing a json field
  * def ef = graphJSON.effectiveFrom

### calling java
    * def date1 = java.time.ZonedDateTime.now().plusYears(1)

### create a json object
    * def query =  
		"""
    { cf: <cf>, ef: '#(graphJSON.effectiveFrom)', ct: 2019-08-13T14:21:06.647-04:00, et: 2019-08-13T14:21:06.647-04:00 }
		"""

### set a karate var from a js block
    *  eval 
		"""
			var query = { cf: <currentFrom>, ct: <currentTo>, ef: <effectiveFrom>, et: <effectiveFrom> }
			karate.set('query', query)
		"""


