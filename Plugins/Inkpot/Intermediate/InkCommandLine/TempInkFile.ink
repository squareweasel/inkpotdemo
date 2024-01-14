INCLUDE insect.fly.ink
INCLUDE insect.ant.ink
INCLUDE hungryghost.ink
INCLUDE micro.ink



VAR deaths = 0
VAR dreams = 5
VAR dreamed = 0
// Define a list of animal types"
LIST Type = Insect, Mammal, Aquatic, Micro, Human, Spirit, Cosmic, Heavenly, HungryGhost
->fly
==start==
You {dive|float|drift|zoom|zap|jiggle|wobble|wobble|phase|melt|smear|buzz|shiver|run|walk|pace|swim|dive|sink|fly|shoot|instantaneously move} through the void between things. 
+[continue] -> birth

==birth==

// Start the story
You are born as a <>

// Choose life form level 1
{shuffle:
    - -> insect
    - -> mammal
    - -> aquatic
    - -> micro
    - -> human
    - -> spirit
    - -> cosmic
    - -> heavenly
    - -> hungryghost
}
//Choose life form level 2
== insect ==
// Choose a random insect using a shuffle sequence

{shuffle:
    - {House|Devourer|Prismatic|Naked|} Fly. -> fly
    - {Fire|Worker|Tender|Black|Elder|} Ant. -> ant
    - {Royal|Bumble|Cave|High-mountain|Singer|} Bee. -> bee
    - {Jumping|Ground|Loom|Wolf} Spider. -> spider
    - {Blue|Monarch|Nightbloom|Radiant|White|Yellow|} Butterfly. -> butterfly
}

// Define a knot for each insect
==micro==
{shuffle:
- plankton. ->plankton
- virus. ->virus
- germ. ->germ
}
==human==
{shuffle:
-
-
-
}
->Death
==spirit==
{shuffle:
-
-
-
}
->Death
==cosmic==
{shuffle:
-
-
-
}
->Death
==heavenly==
{shuffle:
-
-
-
}
->Death
==hungryghost==
{shuffle:
- Head-Snake. -> headsnake
- Whirling-teeth. -> whirlingteeth
- Lamp-lighter. -> lamplighter
- Gluttinous One. -> gluttinousone
- 
}
->Death
// Define a knot for each animal type

== bee ==
You are a worker bee in a hive of honey bees. You have a fuzzy body and a stinger. You can make honey from nectar and pollen. You help pollinate flowers and crops. You have a complex social structure and a complex language.

-> Death

== spider ==
You have eight legs and venomous fangs. You can spin silk from your spinnerets and make webs to catch prey. You are an ambush predator and can sense vibrations with your hairs. You have many enemies, such as wasps and birds.

-> Death

== butterfly ==
You have four colorful wings and a long proboscis. You can fly from flower to flower and sip nectar. You are an example of metamorphosis and have four stages in your life cycle: egg, caterpillar, pupa and adult. You have many admirers, but also some dangers, such as lizards and frogs.

-> Death


->Death
== mammal ==
// Choose a random mammal using a shuffle sequence
{shuffle:
    - Dog. -> dog
    - Cat. -> cat
    - Mouse. -> mouse
    - Lion. -> lion
    - Elephant. -> elephant
}

// Define a knot for each mammal
== dog ==
You are a domesticated canine that lives with humans. You have fur, ears and a tail. You can bark, growl and wag your tail. You are loyal, friendly and playful. You like to chase balls and bones.

-> Death

== cat ==
You are a domesticated feline that lives with humans. You have fur, whiskers and claws. You can meow, purr and hiss. You are independent, curious and graceful. You like to nap and catch mice.

-> Death

== mouse ==
You are a small rodent that lives in various habitats. You have fur, ears and a long tail. You can squeak, nibble and run. You are timid, clever and adaptable. You like to eat seeds and cheese.

-> Death

== lion ==
You are the king of the beasts that lives in the savanna. You have fur, mane and sharp teeth. You can roar, hunt and fight. You are powerful, majestic and brave. You like to eat meat and protect your pride.

-> Death

== elephant ==
You are the largest land animal that lives in the jungle or the desert. You have skin, trunk and tusks. You can trumpet, spray water and lift things. You are intelligent, gentle and social. You like to eat plants and remember things.

-> Death

== aquatic ==
// Choose a random fish using a shuffle sequence
{shuffle:
    - Shark. -> shark
    - Salmon. -> salmon
    - Clownfish. -> clownfish
    - Goldfish. -> goldfish
    - Jellyfish. -> jellyfish
}

// Define a knot for each fish
== shark ==
You are a fearsome predator that lives in the ocean. You have scales, fins and razor-sharp teeth. You can swim, bite and smell blood. You are fast, strong and ruthless. You like to eat fish and seals.

-> Death

== salmon ==
You are a migratory fish that lives in the ocean and the river. You have scales, fins and a streamlined body. You can swim, jump and spawn. You are determined, resilient and tasty. You like to eat plankton and insects.

-> Death

== clownfish ==
You are a colorful fish that lives in the coral reef. You have scales, fins and stripes. You can swim, hide and form symbiosis with anemones. You are cheerful, adventurous and loyal. You like to eat algae and zooplankton.

-> Death

== goldfish ==
You are a domesticated fish that lives in a bowl or a pond. You have scales, fins and a fancy tail. You can swim, blow bubbles and grow big. You are calm, peaceful and forgetful. You like to eat flakes and pellets.

-> Death

== jellyfish ==
You are a simple creature that lives in the ocean. You have no bones, no brain and no heart. You can float, pulse and sting. You are graceful, mysterious and dangerous. You like to eat plankton and small fish.

-> Death

==Death==
You died.
~ deaths++
~ dreams--
~ dreamed++


##a very complicated way of keeping dreams above 0?
{dreams >= 0:
-> rebirth
- else:
~ dreams++
-> rebirth
}

* [Continue] -> rebirth

== rebirth ==
You have lived and died {deaths} times. You have dreamed {dreamed} times. You will dream {dreams} more times.
->ac1
==ac1==
+[Be born again?] ->start
+[Let me rest]
    I am tired, let me rest in oblivion. Spare me the aggravation of unceasing existence.
    You cannot. Your desire for nonexistence binds you to this stream of being. ->start
    
-> END

->DONE