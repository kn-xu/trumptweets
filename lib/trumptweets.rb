require "trumptweets/version"
require "trumptweets/fake_news"
require "trumptweets/russia"
require "trumptweets/hilary"
require "trumptweets/maga"
require "trumptweets/obama"

# Main module for getting trump tweets
module Trumptweets
	@tweet_mapping = {
		'fake_news': Fake_News::TWEETS,
		'russia': Russia::TWEETS,
		'hilary': Hilary::TWEETS,
		'maga': Maga::TWEETS,
		'obama': Obama::TWEETS
	}

	# Gets a random trump tweet from his time of presidency
	def self.tweet()
		get_tweet(@tweet_mapping.keys.sample)
	end

	# Get a random tweet of trump mentioning the phrase fake news
	def self.fake_news()
		get_tweet('fake_news')
	end

	# Get a random tweet of trump mentioning Russia
	def self.russia()
		get_tweet('russia')
	end

	# Get a random tweet of trump mentioning Hilary or Clinton
	def self.hilary()
		get_tweet('hilary')
	end

	# Get a random tweet of trump mentioning the term MAGA
	def self.maga()
		get_tweet('maga')
	end

	# Get a random tweet of trump mentioning Obama
	def self.obama()
		get_tweet('obama')
	end

	private

	# Logic to pull the tweets from the other modules with a list of their respective types
	# i.e. maga tweets / hilary tweets
	def self.get_tweet(type)
		if !type
			raise 'No type of tweet was specific'
		end

		random_number = get_random_index(@tweet_mapping[type.to_sym].length)
		@tweet_mapping[type.to_sym][random_number]
	end

	# Gets a random index number
	def self.get_random_index(arr_length)
		rand(0..arr_length)
	end

end

