abstract MicroLang = {

-- a very minimal version of MiniGrammar + MiniLexicon, helping to get started

-----------------------------------------------------
---------------- Grammar part -----------------------
-----------------------------------------------------
  flags startcat=Utt ;
  cat

-- Common
    Utt ;    -- sentence, question, word...         e.g. "be quiet"

-- Cat
    S ;      -- declarative sentence                e.g. "she lives here"
    VP ;     -- verb phrase                         e.g. "lives here"
    Comp ;   -- complement of copula                e.g. "warm"
    AP ;     -- adjectival phrase                   e.g. "warm"
    CN ;     -- common noun (without determiner)    e.g. "red house"
    NP ;     -- noun phrase (subject or object)     e.g. "the red house"
    PN ;     -- proper noun                         e.g. "Paris"
    Det ;    -- determiner phrase                   e.g. "those"
    Prep ;   -- preposition, or just case           e.g. "in", dative
    V ;      -- one-place verb                      e.g. "sleep"
    V2 ;     -- two-place verb                      e.g. "love"
    A ;      -- one-place adjective                 e.g. "warm"
    N ;      -- common noun                         e.g. "house"
    Pron ;   -- personal pronoun                    e.g. "she"
    Adv ;    -- adverbial phrase                    e.g. "in the house"

  fun
-- Phrase
    UttS      : S  -> Utt ;         -- he walks
    UttNP     : NP -> Utt ;         -- he

-- Sentence
    PredVPS   : NP -> VP -> S ;             -- John walks --s shortcut even wrt MiniGrammar

-- Verb
    UseV      : V   -> VP ;             -- sleep
    ComplV2   : V2  -> NP -> VP ;       -- love it ---s
    UseComp   : Comp -> VP ;            -- be small
    CompAP    : AP -> Comp ;            -- small
    CompNP    : NP -> Comp ;            -- a student
    CompAdv   : Adv -> Comp ;          -- between jobs
    AdvVP     : VP -> Adv -> VP ;       -- sleep here

-- Noun
    DetCN     : Det -> CN -> NP ;       -- the man
    UsePron   : Pron -> NP ;            -- she
    UsePN     : PN -> NP ;              -- Paris
    a_Det     : Det ;                   -- indefinite singular ---s
    aPl_Det   : Det ;                   -- indefinite plural   ---s
    the_Det   : Det ;                   -- definite singular   ---s
    thePl_Det : Det ;                   -- definite plural     ---s
    UseN      : N -> CN ;               -- house
    AdjCN     : AP -> CN -> CN ;        -- big house

-- Adjective
    PositA    : A  -> AP ;              -- warm

-- Adverb
    PrepNP    : Prep -> NP -> Adv ;     -- in the house

-- Structural
    in_Prep   : Prep ;
    on_Prep   : Prep ;
    with_Prep : Prep ;

    i_Pron    : Pron ;
    youSg_Pron: Pron ;
    he_Pron   : Pron ;
    she_Pron  : Pron ;
    we_Pron   : Pron ;
    youPl_Pron: Pron ;
    they_Pron : Pron ;


-----------------------------------------------------
---------------- Lexicon part -----------------------
-----------------------------------------------------

fun
  apple_N : N ;
  bird_N : N ;
  cat_N : N ;
	car_N : N ;
  dog_N : N ;
	dish_N : N ;
	fish_N : N ;
	baby_N : N ;
	lady_N : N ;
	man_N : N ;
	woman_N : N ;
	child_N : N ;

  jump_V : V ;
	live_V : V ;
	rush_V : V ;
  walk_V : V ;
  like_V2 : V2 ;
  find_V2 : V2 ;
	wash_V2 : V2 ;
  wait_V2 : V2 ;

  big_A : A ;
	small_A : A ;
	heavy_A : A ;
	light_A : A ;

  now_Adv : Adv ;
  already_Adv : Adv ;
	heavily_Adv : Adv ;
	lightly_Adv : Adv ;
}