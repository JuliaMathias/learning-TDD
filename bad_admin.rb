describe Membership do
    before(:each) do
      chocolate_membership.promote_to_admin
    end
  
    let(:user) { User.new("Bill Wonka") }
    let(:chocolate_group) { Group.new("Chocolate Factory") }
    let(:peach_group) { Group.new("Giant Peach Enthusiasts") }
    let(:chocolate_membership) { Membership.new(user: user, group: chocolate_group, admin: false) }
    let(:peach_membership) { Membership.new(user: user, group: peach_group, admin: false) }
  
    describe "#promote_to_admin" do
      it "makes a regular membership an admin membership" do
        expect(chocolate_membership).to be_admin
      end
  
      it "doesn't change other memberships" do
        expect(peach_membership).not_to be_admin
      end
    end
  end