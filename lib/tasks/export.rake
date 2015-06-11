
namespace :export do
  desc "Export default resume to seed"
  task :seeds_format => :environment do
    #
    Resume.where(:id => 2).all.each do |resume|
      puts "Resume.create(#{resume.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    Skill.where(:resume_id => 2).all.each do |child|
      puts "Skill.create(#{child.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 

        Service.where(:resume_id => 2).all.each do |child|
      puts "Service.create(#{child.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 

        Software.where(:resume_id => 2).all.each do |child|
      puts "Software.create(#{child.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 

        Milestone.where(:resume_id => 2).all.each do |child|
      puts "Milestone.create(#{child.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 

        Hobby.where(:resume_id => 2).all.each do |child|
      puts "Hobby.create(#{child.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 

        Experience.where(:resume_id => 2).all.each do |child|
      puts "Experience.create(#{child.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 

        Detail.where(:resume_id => 2).all.each do |child|
      puts "Detail.create(#{child.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 
  end
end