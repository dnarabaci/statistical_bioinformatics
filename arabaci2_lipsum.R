
#' title: lipsum file homework
#' author: Duygu Nur Arabaci, University of Potsdam, Germany; Mekontso Tepeu Florentin Jose, University of Potsdam, Germany
#' date: 2023-11-20


## HW-Task: extend this lipsum function to support as well 
##          Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC
##          and the translation of all types into English, implementing lang="english"
## 
## See for the other text and the translations:  https://www.lipsum.com/


#'
#' **Name:**  lipsum - create lipsum texts with R
#'
#' **Usage:** `lipsum(type=1, paragraphs=1, lang="latin")`
#' 
#' **Arguments:**
#'    - type - the lipsum block, either 1 (Lorem lipsum ...) or 2 (Sed ut perspiciatis ...), default: 1
#'    - paragraphs - integer, how many paragraphs, default: 1
#'    - lang - either 'latin' or 'english', default: 'latin'
#' 
#' **Returns:** text paragraphs usually shown with cat
#'
#' **Example:**
#'
#' ```{r}
#' cat(lipsum(1,paragraphs=2))
#' ``` 

lipsum <- function (type=1, paragraphs=1,lang="latin") {
   if (lang == "latin") {
       if (type == 1) {
           lips=paste(rep("Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                          sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                          Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                          nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                          reprehenderit in voluptate velit esse cillum dolore eu fugiat
                          nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                          sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n",paragraphs),collapse="")
       } else if (type == 2) {
           lips=paste(rep("Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                          accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                          quae ab illo inventore veritatis et quasi architecto beatae vitae
                          dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas
                          sit aspernatur aut odit aut fugit, sed quia consequuntur magni
                          dolores eos qui ratione voluptatem sequi nesciunt. Neque porro
                          quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                          adipisci velit, sed quia non numquam eius modi tempora incidunt
                          ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim
                          ad minima veniam, quis nostrum exercitationem ullam corporis
                          suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
                          Quis autem vel eum iure reprehenderit qui in ea voluptate velit
                          esse quam nihil molestiae consequatur, vel illum qui dolorem eum
                          fugiat quo voluptas nulla pariatur?\n\n",paragraphs),collapse="")
       } else {
         stop("only type 1 and 2 are supported")
      } 
   } else if (lang=="english") {
      if (type == 1) {
                 lips=paste(rep("

                           Life image divided of good. Creeping isn't can't all saw deep third. 
                           Is beginning likeness fill place seas from for. Signs. Herb very 
                           Thing fish us doesn't he replenish third first him, shall were 
                           creature from forth said own. Made seasons cattle greater land spirit 
                           gathering darkness moved his moving isn't wherein is behold spirit a. 
                           Dominion multiply was years firmament open herb herb give had moveth.
                           Given. And third fill which. Waters rule days his day gathering don't 
                           second, beginning form he forth can't stars female dominion seas. 
                           After given they're subdue moveth bearing morning shall 
                           given for there. \n\n",paragraphs),collapse="")
      }
      if (type == 2) {
         lips=paste(rep("
         

                              I waters rule whales living and you'll kind after greater be unto life very morning. Thing from given days.
                              Winged. Good creeping were fruitful open from great dominion firmament whose they're set fish so fowl 
                              had their. Fly, over heaven above together without first midst moved. Brought meat also were. Lesser saying may fish.
                              Cattle gathering. Of sixth upon bearing creeping darkness had moveth divide face you second make shall 
                              unto third appear us appear deep. Abundantly behold fly, creeping, deep abundantly, abundantly evening. 
                              You'll creepeth unto unto light you'll upon without subdue to stars, called living also winged, also. \n\n",paragraphs),collapse="")
      }
   } else {
      stop("Only latin supported currently")
   }
   lips=gsub("  +", " ",lips)
   return(lips)
}
