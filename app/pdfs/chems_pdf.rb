require 'prawn/table'

class ChemsPdf <Prawn::Document


	def initialize(mcrop,mepembashes,mfcs,farmako)
		super(top_margin:10)

			@mcrop=mcrop
		@mepembashes=mepembashes
		@mfcs=mfcs
		@farmako=farmako
		default_header
		header
		table_content

	end
	def default_header
		logo="#{Rails.root}/app/assets/images/default.png"
		data=[[{:image=>logo,:fit=>[100,50],:position=>:center,:vposition=>:center},"Sultanas Export Union ltd"," 3rd cell "]]
		table data,:column_widths=>[120,300,120],
		      :cell_style=>{:size=>15,
		                    :align=>:center,
		                    :valign=>:center,
		                    :text_color=>"346842",
		                    :border_lines=>[:dotted,:dotted, :dotted,:dotted],
		                    :overflow=>:shrink_to_fit,
		                   #:position=>:center,
		                    #:vposition=>:center,
		                    #:padding=>[20,15,15,20]
		                   }

		move_down 20
	end

	def header
		text "Chem List for #{@mcrop.gonoma}",
	       size:20,style: :bold
	end

	def table_content
		move_down 10

		table mcrop_rows do
			row(0).font_style = :bold
			self.header = true
			self.position=:center
			self.cell_style={:borders=>[ ],:size=>10,:height=>25,:padding=>[5,5,5,5]}
			self.row_colors = ['DDDDDD', 'FFFFDD']
			self.column_widths = [200, 40, 150,150]

		end
	end

	def mcrop_rows
		[["Trade Name","phi","Prime Igridient","Expiration Date"]]+
				@mfcs.map do |mfc|
					[mfc.gbonoma,"fixme",mfc.farmako.systatiks.first.onomadron,mfc.telos_egri]
				end
	end

end
#mfc.farmako.mepembashes.where(:mcrop_id==params[:id]).last.diast_pros

