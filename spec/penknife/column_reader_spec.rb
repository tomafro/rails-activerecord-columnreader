require 'spec_helper'

class Monster < ActiveRecord::Base
  column_reader :name
  column_reader :dob, :as => :birth_dates
  scope :carnivorous, :conditions => {:carnivorous => true}
end

describe "Penknife::ActiveRecord::ColumnReader" do
  before :all do
    @growler = Monster.create! :name => 'Growler', :carnivorous => true, :dob => 5.years.ago.to_date
    @munchy = Monster.create! :name => 'Munchy', :carnivorous => true, :dob => 12.years.ago
    @thistletop = Monster.create! :name => 'Thistletop', :carnivorous => false, :dob => 1.years.ago
  end

  it "returns only specified values" do
    Monster.names.sort.should eql(['Growler', 'Munchy', 'Thistletop'])
  end

  it "respects scope" do
    Monster.carnivorous.names.sort.should eql(['Growler', 'Munchy'])
  end

  it "casts returned values" do
    Monster.birth_dates
  end

  after :all do
    Monster.destroy_all
  end
end