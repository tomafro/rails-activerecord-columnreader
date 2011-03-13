require 'spec_helper'

class Monster < ActiveRecord::Base
  column_reader :name
  column_reader :dob, :as => :birth_dates
  column_reader :stomachs, :as => :stomachs
  scope :carnivorous, :conditions => {:carnivorous => true}
end

describe "Penknife::ActiveRecord::ColumnReader" do
  before :all do
    @growler = Monster.create! :name => 'Growler', :carnivorous => true, :dob => 5.years.ago.to_date, :stomachs => 1.0
    @munchy = Monster.create! :name => 'Munchy', :carnivorous => true, :dob => 12.years.ago, :stomachs => 2.5
    @thistletop = Monster.create! :name => 'Thistletop', :carnivorous => false, :dob => 1.years.ago, :stomachs => 3
  end

  it "returns only specified values" do
    Monster.names.sort.should eql(['Growler', 'Munchy', 'Thistletop'])
  end

  it "respects scope" do
    Monster.carnivorous.names.sort.should eql(['Growler', 'Munchy'])
  end

  it "casts returned dates" do
    Monster.birth_dates.should eql([@growler.dob.to_date, @munchy.dob.to_date, @thistletop.dob.to_date])
  end

  it "casts returned floats" do
    Monster.stomachs.should eql([@growler.stomachs, @munchy.stomachs, @thistletop.stomachs])
  end

  after :all do
    Monster.destroy_all
  end
end