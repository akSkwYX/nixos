return {
   "frabjous/knap",
   config = function ()
      local gknapsettings = {
          htmltohtml = "A=%outputfile% ; B=\"${A%.html}-preview.html\" ; sed 's/<\\/head>/<meta http-equiv=\"refresh\" content=\"1\" ><\\/head>/' \"$A\" > \"$B\"",
          htmltohtmlviewerlaunch = "A=%outputfile% ; B=\"${A%.html}-preview.html\" ; firefox \"$B\"",
          htmltohtmlviewerrefresh = "none",
          mdtohtml = "A=%outputfile% ; B=\"${A%.html}-preview.html\" ; pandoc --standalone %docroot% -o \"$A\" && sed 's/<\\/head>/<meta http-equiv=\"refresh\" content=\"1\" ><\\/head>/' \"$A\" > \"$B\" ",
          mdtohtmlviewerlaunch = "A=%outputfile% ; firefox \"${A%.html}-preview.html\"",
          mdtohtmlviewerrefresh = "none",
          mdoutputext = "html",
          mdtopdf = "pandoc %docroot% -o %outputfile%",
          mdtopdfviewerlaunch = "sioyek %outputfile%",
          mdtopdfviewerrefresh = "none",
          markdownoutputext = "html",
          markdowntohtml = "pandoc --standalone %docroot% -o %outputfile%",
          markdowntohtmlviewerlaunch = "falkon %outputfile%",
          markdowntohtmlviewerrefresh = "none",
          markdowntopdf = "pandoc %docroot% -o %outputfile%",
          markdowntopdfviewerlaunch = "sioyek %outputfile%",
          markdowntopdfviewerrefresh = "none",
          texoutputext = "pdf",
          textopdf = "pdflatex -interaction=batchmode -halt-on-error -synctex=1 %docroot%",
          textopdfviewerlaunch = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --new-window %outputfile%",
          textopdfviewerrefresh = "none",
          textopdfforwardjump = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --reuse-window --forward-search-file %srcfile% --forward-search-line %line% %outputfile%",
          textopdfshorterror = "A=%outputfile% ; LOGFILE=\"${A%.pdf}.log\" ; rubber-info \"$LOGFILE\" 2>&1 | head -n 1",
      }
      vim.g.knap_settings = gknapsettings
   end
}
