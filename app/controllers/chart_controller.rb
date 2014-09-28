class ChartController < ApplicationController
  def clerk
  	# 1 person
  	@cl = Clerk.first
  end

  def manager
  	# 5 person
  	@m1 = Manager.find(1)
  	@m2 = Manager.find(2)
  	@m3 = Manager.find(3)
  	@m4 = Manager.find(4)
  	@m5 = Manager.find(5)
  end

  def councillor
  	# 12 person
  	con = []
  	12.times.each do |e|
  		con << Councillor.find(e+1)
  	end

  	@con = con
  end

  def competent
  	# 18 6 9 12 4
  	c1 = []
  	c2 = []
  	c3 = []
  	c4 = []
  	c5 = []
  	
  	Person1.all.each do |e|
  		c1 << e
  	end
  	
  	6.times.each do |e|
  		c2 << Person2.find(e+1)
  	end
  	
  	9.times.each do |e|
  		c3 << Person3.find(e+1)
  	end
  	
  	12.times.each do |e|
  		c4 << Person4.find(e+1)
  	end
  	
  	4.times.each do |e|
  		c5 << Person5.find(e+1)
  	end

  	@person1 = c1
  	@person2 = c2
  	@person3 = c3
  	@person4 = c4
  	@person5 = c5

  end
end


