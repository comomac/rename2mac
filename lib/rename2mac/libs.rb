class String
	# escape [] and {} character for Dir.glob to use
	def glob_escape
		self.gsub(/([\[\]\{\}\*\?\\])/, '\\\\\1')
	end

	def to_m
		# convert string to UTF8-MAC format
		self.encode('UTF8-MAC', 'UTF-8')

		# convert with extra function of replace invalid character to null
		#self.encode('UTF8-MAC', 'UTF-8', invalid: :replace, undef: :replace, replace: '')
	end

	def to_u
		# convert string to UTF-8 format
		self.encode('UTF-8', 'UTF8-MAC')

		# convert with extra function of replace invalid character to null
		#self.encode('UTF-8', 'UTF8-MAC', invalid: :replace, undef: :replace, replace: '')
	end

	def dn
		File.dirname( self )
	end

	def bn
		File.basename( self )
	end

	def um_different?
		# return if the string is different when converted to UTF8-MAC format
		self.unpack('H*') != self.to_m.unpack('H*')
	end

	def print_diff
		# highlight the character that is not UTF8-MAC compatible
		print self.dn + '/'
		self.bn.each_char { |c|
			if c.um_different?
				print c.red.bold
			else
				print c
			end
		}
		puts
	end
end

def Dir.restricted?( dir, excludes=[] )
	rdirs = [
		'.Trash', '.Trashes', '.fseventsd', '.Spotlight-V100', '.DocumentRevisions-V100',
		'.$EXTEND',
		'_SYNCAPP',
		'Corrupted',
		'System Volume Information', 'RECYCLER',
		'.sparsebundle',
		'.tmpdir', '.tmp7z',
		'.AppleDouble'
	]

	for word in rdirs - excludes
	    return true if dir.include?( word )
    end
    return false
end