class Photo
  include Mongoid::Document
  belongs_to :user
  belongs_to :album
  
  has_and_belongs_to_many :tags
  
  field :name, :type => String, :null => false
  field :image, :type => String
  mount_uploader :image, ImageUploader
  
  def tagslist
     string = ""
     tags.each{|t| string << t.name+", " }
     string[0..-3]
   end

   def tagslist=(param)
      self.tags = []
      new_tags = param.to_s.split(/[,]+/)
      new_tags = new_tags.collect{|t| t.to_s.strip.downcase}
      new_tags = new_tags.compact.uniq

      new_tags.each do |t|
         # get the tag if it exists
         tag = nil
         tag = Tag.where(name: t).first

         # create the tag if not
         tag = Tag.new(name: t) unless tag

         # save the new created tag
         tag.save if tag.new_record?

         # add the tag to the photo
         self.tags.push(tag)
      end
   end
  
end
