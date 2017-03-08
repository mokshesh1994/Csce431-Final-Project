require 'spec_helper.rb'

#RSpec.describe committees do
    #committee
     #create
     #INSERT INTO committees VALUES (comm1, desc) 
    
    describe '.create' do 
        
        it 'creates a new committee' do

            #create a comittee 
            dc = committee.create("comm1", "desc") #database.committees
           
            #check if it was created properly
            #get returns a list, array that represents a tuple, indexes represent a column 
            temp = dc.get("comm1")
            #SELECT FROM committees WHERE name = comm1
            
            #check
            expect(temp[0]).to eq("comm1")
            expect(temp[1]).to eq("desc")

           # expect(1).to eq(1)
        end
        
    end
=begin
    describe '.edit' do
        
        it 'deletes committee' do
            
            #add a new tuple to the committee
            dc = database.commitees
            dc.create("comm1","desc")
            
            #get count of tuples before the deletion is done
            temp = dc.get()
            count_a = dc.count()
            
            #delete the tuple 
            dc.delete("comm1")
            count_b = dc.count()
            temp = dc.get() #get an array of the tupples
            
            #test if the tuple is in the table and if the count went down
            expect(temp).not_to include("com1")
            expect(count_b).to eq(count_a - 1)
        end
    
        it 'changes name' do 
            #create a comittee 
            dc = database.commitees
            dc.create("comm1","desc")
            
            #change name of the committee
            dc.update_name("comm1", "newname")
            dc.update_desc("desc", "newdesc")
            
            #check if tuple has changed name
            temp = dc.get("newname") #will return 0 if it doesnt find it  
            expect(temp).not_to eq(0)
            expect(temp[0]).to eq("newname")
            expect(temp[1]).to eq("newdesc")
        end
    
    end
=end 
