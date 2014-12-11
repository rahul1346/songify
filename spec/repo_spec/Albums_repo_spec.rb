require 'spec_helper.rb'

describe 'Breeds Repo' do
  
  before(:each) do
    @albumsRepo = Songify::Albums.new
    @albumsRepo.drop_table
    @albumsRepo.create_table
  end

  it 'should create an Album' do
    album1 = @albumsRepo.create("Hail Mary", 1994, 'Tupac')
    expect(album1.album_name).to eq('Hail Mary')
    expect(album1.album_year).to eq(1994)
    expect(album1.album_artist).to eq('Tupac')
  end

  describe 'my find methods' do 
    before(:each) do 
      @albumsRepo.create("Hail Mary", 1994, 'Tupac')
      @albumsRepo.create(create("Some other album", 1994, 'some other guy'))
    end

    it 'can find an album by id' do 

    end

    it 'can find an album by year' do 
    end

  end

  describe 'my delete methods' do 
    before(:each) do
      ## CREAT A BUNCH MORE SEED DATA TO TEST O
    end
  end

  # it 'should output all Album' do
  # end

  # it 'should access/read/output only one specific Album'
  # end

  # it 'should update an Album' do
  # end

  # it 'should delete and Album' do
  # end

end