FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Persone #{n}" }
    sequence(:email) { |n| "persone_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"

	  factory :admin do
			admin true
		end
	end
end