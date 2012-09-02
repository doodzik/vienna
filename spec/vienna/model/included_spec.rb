describe "Model.included" do
  before do
    @cls = Class.new do
      include Vienna::Model
    end
  end

  it "should setup the primary_key variable" do
    @cls.primary_key.should == :id
  end

  it "should setup the fields variable" do
    @cls.fields.should be_kind_of(Hash)
  end
end