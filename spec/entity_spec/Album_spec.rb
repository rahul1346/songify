require_relative '../spec_helper.rb'

describe Songify::Albums do 
  
  it "allows us to create an album" do
    @Album1 = Songify::Albums.new('The Album', 1999, 'Artist')
    expect(@Album1).to be_a(Songify::Albums)
    expect(@Album1.album_name).to eq('The Album')
    expect(@Album1.album_year).to eq(1999)
    expect(@Album1.album_artist).to eq('Artist')
  end

end