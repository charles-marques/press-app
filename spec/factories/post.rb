FactoryBot.define do
	factory :post do
		title {FFaker::Lorem.word}
		description {FFaker::Lorem.sentence}
		status {FFaker::Boolean.sample}
		author {FFaker::Name.name}
	end
end