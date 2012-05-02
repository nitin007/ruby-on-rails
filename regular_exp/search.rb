class String
	def search(str)
		self.gsub(/#{str}/,"(#{str})")
	end
end
p "can you can a can as a canner can can a can?".search("can")
