Excel Formulas
=============

These [formulas](ConED-Formulas.md), when added to the provided Excel spreadsheet, concatenate cell data with XML markup for the A-B Tech Continuing Education schedule. They should be added to the defined column and or row. Be sure check the spreadsheet for missing information and correct it beforehand.

Once complete, copy the the "X" column data and "Paste Special" the values into a new sheet. In the next column over, add the formula `=clean(a1)` and extend it the full height of the column. Copy these values into a text editor of your choice. Save it as XML or change the file extension to "xml".

Download the [ruby script](RegularExpressionScript/coned-findReplace.rb) and follow the directions on the [README](RegularExpressionScript) page to clean up the formatting before importing into inDesign.

If errors occur while importing, go to the provided line number and resolve the issue. Save and reattempt.
