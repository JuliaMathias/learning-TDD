describe "#promote_to_admin" do
    it "makes a regular membership an admin membership" do
      # setup
      membership = Membership.new(admin: false)
  
      # exercise
      membership.promote_to_admin
  
      # verify
      expect(membership).to be_admin
    end
  end