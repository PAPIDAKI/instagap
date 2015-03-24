class GroupsPdf < Prawn::Document
	def initialize (groups)
		super()
		@groups=groups
		header
		text_content
		table_content
	end

	def header
		text "Groups List"
	end

	def text_content
		y_position=cursor - 20
		bounding_box([0,y_position],:width => 500,:height=>50) do
			text "Lorem ipsum",size:15,style: :bold
			text "This is the list of all your groups .Take care of the good agricultural practices."
		end
	end

	def table_content
		table groups_rows do
			row(0).font_style=:bold
			self.header=true
			self.row_colors=['DDDDDD','FFFFFF']
			self.column_widths=[180,180,180]
		end
	end

	def groups_rows
		[['Company','Email','Address']] +
				@groups.map do |group|
					[group.name,group.email,group.address]
				end
	end
end