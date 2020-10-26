# splitrename
Rename a series of indicators from a categorical variable and re-label each according to the original variable's value label.

## Installing via *net install*

The current version is still a work in progress. To install, user can use the net install command to download from the project's Github page:

```
net install splitrename, from("https://aarondwolf.github.io/splitrename")
```

## Syntax

        splitrename varlist [if], oldname(varname)  newname(varname)

## Description

**splitrename** takes a list of variables in varlist with a common stub (specified by oldname) and
renames them, changing all instances of oldname to newname in all variable names and labels.

## Options

- **<u>old</u>name(varname)** specifies the stub common to all variables in varlist.
- **<u>new</u>name(varname)** specifies the new stub that will replace oldname

## Examples

Let's say you have three variables, c1, c1_1, and c1_2 (for example, if c1 was split). You want
to rename them all var, var_1, and var_2. The command you would use is:

    .  splitrename c1 c1_1 c1_2, oldname(c1) newname(var)

## Stored results

splitrename stores the following in r():

### Locals

- **r(varlist)** - all variables specified by varlist
- **r(newvars)** - all new variable names generated by splitrename

## Authors

Aaron Wolf, Yale University
aaron.wolf@yale.edu