*! version 1.0.1  13sep2019 Aaron Wolf, aaron.wolf@yale.edu
cap program drop splitrename
program define splitrename, rclass
		syntax varlist, OLDname(name) NEWname(name)
		confirm variable `varlist'
		confirm name `newname'
		
		foreach var of varlist `varlist'* {
			local new_vname = subinstr("`var'","`oldname'","`newname'",.)
			local varlabel: variable label `var'
			local newlabel = subinstr("`varlabel'","`oldname'","`newname'",.)
			la var `var' "`newlabel'"
			ren `var' `new_vname'
			local changed `changed' `var'
			local new `new' `new_vname'
		}
		return local newvars "`new'"
		return local varlist "`changed'"
		
		
	end
