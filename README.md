Create letterheads in png for use with Wacom(tm) tablets.

#### Requirements

Requires imagemagick and bash.

#### How to Use

Set all files in for example `$HOME/bin`, anywhere in `$PATH`

*First*, use `bash createmodel.sh` to create png model from letterhead pdf.

*Second*, use `paper` to create paper, see *usage*.

#### Usage

$ `paper -h`

```
Usage:

	paper [OPTIONS]

Options are:

	-t	Paper Title (Subject, default: 'untitled')

	-p	Page Number (default: '000')

	-o	Transparent bg (Not white, default: not transparent)

```
