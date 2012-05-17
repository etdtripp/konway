module Konway

  SUBJECT = ['I think', 'I believe', 'I know', 'I said', 'I found', 'We think', 'We believe', 'We know', 'We said', 'We found', 'They think', 'They believe', 'They know', 'They said', 'They found', 'It thinks', 'It believes', 'It knows', 'It said', 'It found', 'She thinks', 'She believes', 'She knows', 'She said', 'She found', 'He thinks', 'He believes', 'He knows', 'He said', 'He found']
  NOUN    = ['Justin Beiber', 'Lady Ga Ga', 'France', 'kittens', 'my boyfriend', 'my mom', 'the Thing', 'Alfred', 'Alfred E. Neuman', 'Aquaman', 'Archangel', 'Archie Andrews', 'Aunt May', 'Barbara Gordon', 'Barry Allen', 'Batman', 'Beast', 'Betty Cooper', 'Big Bad Wolf', 'Bishop', 'Black Canary', 'Black Pete', 'Black Widow', 'Cable', 'Cannonball', 'Captain America', "Chief O'Hara", 'Clarabelle Cow', 'Colossus', 'Cyclops', 'Daisy Duck', 'Daredevil', 'Dewey', 'Dick Grayson', 'Doctor Doom', 'Doctor Strange', 'Donald Duck', 'Emma Frost', 'Gambit', 'Gladstone Gander', 'Goofy', 'Grandma Duck', 'Green Arrow', 'Gyro Gearloose', 'Hal Jordan', 'Hank Pym', 'Havok', 'Hawkeye', 'Hawkman', 'Huey', 'Hulk', 'Human Torch', 'Iceman', 'Invisible Woman', 'Iron Man', 'J. Jonah Jameson', 'James Gordon', 'Jean Grey', 'Jimmy Olsen', 'Judge Dredd', 'Jughead Jones', 'Kitty Pryde', 'Lex Luthor', 'Lois Lane', 'Louie', 'Luke Cage', 'Magneto', 'Martian Manhunter', 'Mary Jane', 'Mickey Mouse', 'Minnie Mouse', 'Mr. Fantastic', 'Ms. Marvel', 'Namor', 'Nick Fury', 'Nightcrawler', 'Perry White', 'Pluto', 'Professor X', 'Psylocke', 'Punisher', 'Quicksilver', 'Reggie Mantle', 'Richie Rich', 'Rogue', 'Sabretooth', 'Scarlet Witch', 'She-Hulk', 'Spider-Man', 'Storm', 'Sunspot', 'Supergirl', 'Superman', 'Tarzan', 'The Doctor', 'The Phantom', 'Thing', 'Thor', 'Tim Drake', 'Uncle Scrooge', 'Veronica Lodge', 'Vision', 'Wally West', 'Wasp', 'Wolfsbane', 'Wolverine', 'Wonder Woman']
  QUAL    = ['might', 'will', 'enjoys', "doesn't want to", 'knows I', 'keeps', 'stops', 'starts', 'considers', 'has a love/hate relationship with', 'likes to dance with']
  VERB    = %w(accept add admire admit advise afford agree alert allow amuse analyse announce annoy answer apologise appear applaud appreciate approve argue arrange arrest arrive ask attach attack attempt attend attract avoid back bake balance ban bang bare bat bathe battle beam beg behave belong bleach bless blind blink blot blush boast boil bolt bomb book bore borrow bounce bow box brake branch breathe bruise brush bubble bump burn bury buzz calculate call camp care carry carve cause challenge change charge chase cheat check cheer chew choke chop claim clap clean clear clip close coach coil collect colour comb command communicate compare compete complain complete concentrate concern confess confuse connect consider consist contain continue copy correct cough count cover crack crash crawl cross crush cry cure curl curve cycle dam damage dance dare decay deceive decide decorate delay delight deliver depend describe desert deserve destroy detect develop disagree disappear disapprove disarm discover dislike divide double doubt drag drain dream dress drip drop drown drum dry dust earn educate embarrass employ empty encourage end enjoy enter entertain escape examine excite excuse exercise exist expand expect explain explode extend face faded fail fancy fasten fax fear fence fetch file fill film fire fit fix flap flash float flood flow flower fold follow fool force form found frame frighten fry gather gaze glow glue grab grate grease greet grin grip groan guarantee guard guess guide hammer hand handle hang happen harass harm hate haunt head heal heap heat help hook hop hope hover hug hum hunt hurry identify ignore imagine impress improve include increase influence inform inject injure instruct intend interest interfere interrupt introduce invent invite irritate itch jail jam jog join joke judge juggle jump kick kill kiss kneel knit knock knot label land last laugh launch learn level license lick lie lighten like list listen live load lock long look love man manage march mark marry match mate matter measure meddle melt memorise mend mess up milk mine miss mix moan moor mourn move muddle mug multiply murder nail name need nest nod note notice number obey object observe obtain occur offend offer open order overflow owe own pack paddle paint park part pass paste pat pause peck pedal peel peep perform permit phone pick pinch pine place plan plant play please plug point poke polish pop possess post pour practise pray preach precede prefer prepare present preserve press pretend prevent prick print produce program promise protect provide pull pump punch puncture punish push question queue race radiate rain raise reach realise receive recognise record reduce reflect refuse regret reign reject rejoice relax release rely remain remember remind remove repair repeat replace reply report reproduce request rescue retire return rhyme rinse risk rob rock roll rot rub ruin rule rush sack sail satisfy save saw scare scatter scold scorch scrape scratch scream screw scribble scrub seal search separate serve settle shade share shave shelter shiver shock shop shrug sigh sign signal sin sip ski skip slap slip slow smash smell smile smoke snatch sneeze sniff snore snow soak soothe sound spare spark sparkle spell spill spoil spot spray sprout squash squeak squeal squeeze stain stamp stare start stay steer step stir stitch stop store strap strengthen stretch strip stroke stuff subtract succeed suck suffer suggest suit supply support suppose surprise surround suspect suspend switch talk tame tap taste tease telephone tempt terrify test thank thaw tick tickle tie time tip tire touch tour tow trace trade train transport trap travel treat tremble trick trip trot trouble trust try tug tumble turn twist type undress unfasten unite unlock unpack untidy use vanish visit wail wait walk wander want warm warn wash waste watch water wave weigh welcome whine whip whirl whisper whistle wink wipe wish wobble wonder work worry wrapping wreck wrestle wriggling x-raying yawn yell zip zoom)
  THING   = ['concert tickets', 'smoothies', 'children', 'fur', 'lasers', 'monkeys', 'dogs', 'cats', 'popsicles', 'disco balls', 'rubber bands', 'titanium', 'shirts', 'shoes', 'White Castle burgers', 'White Castle fries', ]

  class << self
    def tweet; twitty end
    def twit; twitty end

    def twitty
      "#{subject_noun} #{QUAL.sample} #{subject}"
    end

    def subject
      (rand(2)==1) ? "#{VERB.sample} #{THING.sample}" : NOUN.sample
    end

    def subject_noun
      (rand(2)==1) ? "#{SUBJECT.sample} #{NOUN.sample}" : NOUN.sample
    end

    def facebook_params(atts={}); facebunk_params(atts) end
    def fakebook_params(atts={}); facebunk_params(atts) end

    def facebunk_params(atts={})
      { "message" => twitty,
        "link"    =>"http://cot.ag/KHHMvy",
        "name"    => NOUN.sample,
        "caption" => twitty,
        "description"=> twitty,
        "picture"  => "http://www.kissfmuk.com/wp-content/themes/totalkiss_bluebrut/timthumb/timthumb.php?src=http%3A//www.kissfmuk.com/wp-content/uploads/2012/04/kisstory630.jpg%26w%3D630%26h%3D354",
        "actions"  => {
          "name" => "Share",
          "link" => "http://www.facebook.com/sharer.php?u=http%3A%2F%2Fcot.ag%2FKe4mO7&t=Nightcrawlers%20at%20KISSTORY!%20%7C%20KISS"
        } }.merge(atts)
    end
  end
end