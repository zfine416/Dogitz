var friends = {};

friends['bill'] ={}; 
friends['steve'] = {};

friends['bill'] = { 
	'firstName': 'Bill', 
	'lastName': 'Baldwin', 
	'number': '504-641-0247', 
	'address': ['1504 Eastridge Dr','Slidell', 'La', '70458']}; 

	friends['steve'] = { 
		'firstName': 'Steve', 
		'lastName': 'Baldwin', 
		'number': '985-768-8655', 
		'address': ['1713 Joan Dr','New Orleans', 'La', '90210']}; 

		var list; 
		list = function (friends) { 
			for (var key in object) { 
				console.log(friends[key]); 
			} 
		}; 
		list(friends);