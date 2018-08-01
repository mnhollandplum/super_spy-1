Iteration 1 (tests provided)
spy = Spy.new("Cate Archer", 100_000)
# => <#Spy...>
spy.name
# => "Cate Archer"
spy.salary
# => 100000
spy.licenses
# => []

Iteration 2
license_1 = License.new("to kill")
# => <#License...>
license_2 = License.new("to chill")
# => <#License...>
license_3 = License.new("to ill")
# => <#License...>

spy.add_license(license_1)
# => "License to kill added successfully."
spy.add_license(license_2)
# => "License to chill added successfully."

spy.licenses
# => ["to kill", "to chill"]

spy.report



Iteration 3
organization_1 = Organization.new("UNITY")
# => <#Organization...>
organization_2 = Organization.new("SHIELD")
# => <#Organization...>

spy_1 = Spy.new("Cate Archer", 100_000)
# => <#Spy...>
spy_2 = Spy.new("Jemma Simmons", 95_000)
# => <#Spy...>
spy_3 = Spy.new("Leo Fitz", 85_000)
# => <#Spy...>

license_1 = License.new("to kill")
# => <#License...>
license_2 = License.new("to chill")
# => <#License...>
license_3 = License.new("to ill")
# => <#License...>

spy_1.add_license(license_1)
# => "License to kill added successfully."
spy_1.add_license(license_2)
# => "License to chill added successfully."


spy_2.add_license(license_2)
# => "License to chill added successfully."
spy_2.add_license(license_3)
# => "License to ill added successfully."
spy_3.add_license(license_3)
# => "License to ill added successfully."

organization_1.add_spy(spy_1)
# => <#Spy...>
organization_2.add_spy(spy_2)
# => <#Spy...>
organization_2.add_spy(spy_2)
# => <#Spy...>


organization_1.to_kill
# => "* Cate Archer"

organization_2.to_kill
# => "None"

organization_2.to_ill
"* Jemma Simmons
* Leo Fitz"
