#./spec/factories.rb

FactoryBot.define do 

	factory :user, class: User do
		sequence(:email) { |n| "user_#{n}@test.com" }
		password "123456"
	end

	factory :programmer do
		name "Programador-Rails"
		description "Programador em Rails a 4 meses :]"
		language "Ruby and Rails"
		expertise_lvl 4
		user
	end

	factory :project do
		name "Projeto1-Rails"
		description "Projeto de Rails para a implementacao de uma app"
		language "Ruby and Rails"
		duration "1 mes"
		user
	end

	factory :contract do
		contract_type "Contrato de implementacao"
		contract_description "Contrato para implementacao de modulo em um projeto de Rails para o desenvolvimento de uma app"
		contract_duration "1 mes"
		payment 100.00
		status "Em progresso"
		programmer
		project
	end


	factory :programmer_with_contract, :parent => :programmer do |programmer|
		programmer
    	contracts { build_list :contract, 3 }
  	end

  	factory :project_with_contract, :parent => :project do |project|
  		project
  		contracts { build_list :contract, 3 }
  	end

end