## FOLLOWING ALONG THIS TUTORIAL: https://www.r-bloggers.com/playing-with-guis-in-r-with-rgtk2/ ##

libary(tcltk)
library(gWidgetstcltk)


# window ------------------------------------------------------------------
# wdw <- gtkWindow()
# wdw["title"] <- "Riley's Sandbox"
# str(wdw)
# # window frame ------------------------------------------------------------
# fr <- gtkFrameNew("Sandbox")
# str(fr)
# wdw$add(fr)
# str(wdw)
# # boxes -------------------------------------------------------------------
# ## HIERARCHY (from "gtkVBox" help page):
# ## GObject
# ##    +----GInitiallyUnowned
# ##          +----GtkObject
# ##                +----GtkWidget
# ##                      +----GtkContainer
# ##                            +----GtkBox
# ##                                  +----GtkVBox ##
#
# tbx1 <- gtkVBoxNew() ## GtkVBox = Vertical container box ##
# tbx1$setBorderWidth(30)
# fr$add(tbx1)  ## add tbx1 to the existing frame ('fr') created above ##
# str(tbx1)
# str(fr)
#
# tbx2 <- gtkHBoxNew(spacing = 10) ## GtkHBox = Horizontal container box ##
#     ## 'spacing' arg = distance between elements ##
# tbx2$setBorderWidth(24)
# str(tbx2)
#
# txt <- gtkEntryNew() ## text field ##
# str(txt)
# txt$setWidthChars(25)
#
# tbx1$packStart(txt)
# str(tbx1)
# lbl.txt <- gtkLabelNewWithMnemonic("Text") #text label
# tbx1$packStart(lbl.txt)
#
# y <- gtkEntryNew() #text field with result of our calculation
# y$setWidthChars(25)
# tbx1$packStart(y)
#
# tbx1$packStart(tbx2) ## make the two interact?? ##
#
# RtCap <- function(x) {
#     s0 <- strsplit(x, " ")[[1]]
#     nocap <- c("a", "the", "to", "at", "in", "with", "and", "but", "or", "of")
#     s1 <- ifelse(!s0 %in% nocap, toupper(substring(s0, 1,1)), s0)
#     # s2 <- toupper(substring(s[!s %in% nocap], 1,1))
#     s2 <- ifelse(!s0 %in% nocap, substring(s0, 2), "")
#     s <- paste(s1, s2, sep="", collapse=" ")
#     return(s)
# }
#
# cap <- gtkButton("Capitalize")
# tbx2$packStart(cap, fill = F) ## button which will start capitalization ##
#
# pcap <- function(button) {
#     txt$setText(paste(txt$getText(),"RtCap()",sep=""))
# }
#
# gSignalConnect(cap, "clicked", pcap)
