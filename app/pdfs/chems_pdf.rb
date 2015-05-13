require 'prawn/table'

class ChemsPdf <Prawn::Document


	def initialize(mcrop,mepembashes,id,mfarmakos,mfcs)
		super(top_margin:10)

		@mcrop=mcrop
		@mepembashes=mepembashes
		@id=id
		@mfarmakos=mfarmakos
		@mfcs=mfcs

		font_families.update(
			"DejaVu" =>{
         :bold => "#{Prawn::DATADIR}/fonts/DejaVuSans-bold.ttf",
         :normal=>"#{Prawn::DATADIR}/fonts/dejavusans.ttf"
		      }
		    )
		 font "DejaVu"


			default_header
			header
			table_content	
	end

	def id
		@id=@mcrop.code_fyta
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
		text "#{@mcrop.gonoma} Λίστα Εγκεκριμένων Φυτοφαρμάκων",
	       size:15,style: :bold,
	       :align=>:center
	   
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
				@mfarmakos.map do |farmako|
					[farmako.gbonoma,
					  farmako.mepembashes.where(mcrop_id:id).first.try(:diast_pros),
					  farmako.systatiks.first.try(:onomadron),
					  farmako.telos_egri,
				     ]
				end
	end

end
#mfc.mfarmako.mepembashes.where(:mcrop_id==params[:id]).last.diast_pros

