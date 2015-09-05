Create letterheads in png for use with Wacom(tm) tablets.

Requires imagemagick and bash.

*First*, use `bash createmodel.sh` to create png model from letterhead pdf.

*Second*, use `paper <SUBJECT> [PAGE_NUMBER]` to create paper. PAGE_NUMBER is optional, if not present will be '000'.

example:

`paper 'SKETCH ABOUT MY LAST IDEAS'`

OR

`paper-tansparent 'SKETCH ABOUT MY LAST IDEAS' 002`


