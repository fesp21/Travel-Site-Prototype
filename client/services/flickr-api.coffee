# DEPRECATED. Use ApiService instead
class PhotoApi

	@search: (query, callback) ->
		Meteor.call "searchPhotos", query, (error, result) ->
			if error
				throw {
					message: "Could not retrieve photos"
					"error": error
				}

			callback result
