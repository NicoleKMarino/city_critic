RSpec.describe Comment, type: :model do
  it { should belong_to :user}
  it { should belong_to :city}
  it { should validate_presence_of :stars}
end
