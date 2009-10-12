class Task < ActiveRecord::Base

  validates_presence_of :title
  validates_uniqueness_of :title

  def full_title=(title)
    puts "========================================="
    puts "there"
    puts "========================================="
    self.title = title
  end

  def self.find_uncomplete_tasks
    find(:all, :conditions => ['complete = ?', false], :group => 'title')
  end

  def self.find_complete_tasks
    find(:all, :conditions => ['complete = ?', true], :group => 'title')
  end

end