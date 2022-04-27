#!/bin/bash

# curl 'https://www.learnoutloud.com/Download/Modern-Scholar' \
#   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
#   -H 'Accept-Language: en-US,en;q=0.9' \
#   -H 'Cache-Control: max-age=0' \
#   -H 'Connection: keep-alive' \
#   -H 'Content-Type: application/x-www-form-urlencoded' \
#   -H 'Cookie: PHPSESSID=bb368d1da30264afecf15664d878c3a8; cookies=1' \
#   -H 'Origin: https://www.learnoutloud.com' \
#   -H 'Referer: https://www.learnoutloud.com/Download/Modern-Scholar' \
#   -H 'Sec-Fetch-Dest: document' \
#   -H 'Sec-Fetch-Mode: navigate' \
#   -H 'Sec-Fetch-Site: same-origin' \
#   -H 'Sec-Fetch-User: ?1' \
#   -H 'Upgrade-Insecure-Requests: 1' \
#   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36' \
#   -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="101", "Google Chrome";v="101"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'sec-ch-ua-platform: "Linux"' \
#   --data-raw 'actions=&logouturl=https%3A%2F%2Fwww.learnoutloud.com%2FHome&q=&hidid=1&selType=1&selCount=6&hidsearchtext=&pageno=1&id=80&cookie=1&sessionurl=&pubname=Modern-Scholar&hidprodid=30794%2C31024%2C31025%2C31031%2C31027%2C31026%2C31023%2C31332%2C31329%2C30842&hidFormatList=17%2C16%2C15%2C18%3A21%2C20%2C35' \
#   --compressed

# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Alexander-of-Macedonia/35655 Alexander of Macedonia
# https://www.learnoutloud.com/Audio-Books/History/American-History/American-Inquisition-The-Era-of-McCarthyism/30790 American Inquisition: The Era of McCarthyism
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/Law/The-American-Legal-Experience/30839 The American Legal Experience
# https://www.learnoutloud.com/Audio-Books/Politics/-/The-American-Presidency/3499 The American Presidency
# https://www.learnoutloud.com/Audio-Books/Literature/-/Ancient-Greek-Drama/31332 Ancient Greek Drama
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/AngloSaxon-World/31577 Anglo-Saxon World
# https://www.learnoutloud.com/Audio-Books/Science/Archaeology/Archaeology-and-the-Iliad-The-Trojan-War-in-Homer-and-History/30791 Archaeology and the Iliad: The Trojan War in Homer and History
# https://www.learnoutloud.com/Audio-Books/Science/Astronomy/Astronomy-I-Earth-Sky-and-Planets/3501 Astronomy I: Earth, Sky and Planets
# https://www.learnoutloud.com/Audio-Books/Science/Astronomy/Astronomy-II-Stars-Galaxies-and-the-Universe/30792 Astronomy II: Stars, Galaxies, and the Universe
# https://www.learnoutloud.com/Audio-Books/Literature/Literary-History-and-Criticism/Bard-of-the-Middle-Ages-The-Works-of-Geoffrey-Chaucer/30793 Bard of the Middle Ages: The Works of Geoffrey Chaucer
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Basic-Human-Anatomy/30794 Basic Human Anatomy
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Basics-of-Genetics/31316 Basics of Genetics
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Behold-the-Mighty-Dinosaur/30795 Behold the Mighty Dinosaur
# https://www.learnoutloud.com/Audio-Books/History/World-History/The-Bible-and-the-Roots-of-Western-Literature/3491 The Bible and the Roots of Western Literature
# https://www.learnoutloud.com/Audio-Books/Business/Investing-and-Finance/Big-Picture-Investing/3503 Big Picture Investing
# https://www.learnoutloud.com/Audio-Books/Business/Leadership-and-Management/Big-Picture-MBA/30796 Big Picture MBA
# https://www.learnoutloud.com/Audio-Books/Arts-and-Entertainment/Film_-Music_-Radio_-TV_-and-Pop-Culture/The-Blessed-Lens-A-History-of-Italian-Cinema/42888 The Blessed Lens: A History of Italian Cinema
# https://www.learnoutloud.com/Audio-Books/Science/-/The-Brewmasters-Art/34208 The Brewmaster's Art
# https://www.learnoutloud.com/Audio-Books/Philosophy/Ancient-and-Medieval-Philosophy/A-Brief-Biography-of-Thomas-Aquinas/36573 A Brief Biography of Thomas Aquinas
# https://www.learnoutloud.com/Audio-Books/History/Military-History/Brotherhood-of-the-Revolution/3487 Brotherhood of the Revolution
# https://www.learnoutloud.com/Audio-Books/Science/Biology/The-Building-Blocks-of-Human-Life-Understanding-Mature-Cells-and-Stem-Cells/30840 The Building Blocks of Human Life: Understanding Mature Cells and Stem Cells
# https://www.learnoutloud.com/Audio-Books/History/Military-History/The-Buildup-to-World-War-I/36924 The Buildup to World War I
# https://www.learnoutloud.com/Audio-Books/History/American-History/The-Business-of-America/30884 The Business of America
# https://www.learnoutloud.com/Audio-Books/Literature/Literary-History-and-Criticism/CS-Lewis-Literature-Overview/31330 C.S. Lewis Literature Overview
# https://www.learnoutloud.com/Audio-Books/History/European-History/The-Catholic-Church-in-the-Modern-Age/30841 The Catholic Church in the Modern Age
# https://www.learnoutloud.com/Audio-Books/History/-/Causes-of-the-Civil-War/31331 Causes of the Civil War
# https://www.learnoutloud.com/Audio-Books/History/European-History/Christianity-At-the-Crossroads-The-Reformations-of-the-Sixteenth-and-Seventeenth-Centuries/30797 Christianity At the Crossroads: The Reformations of the Sixteenth and Seventeenth Centuries
# https://www.learnoutloud.com/Audio-Books/Science/Archaeology/Citadels-of-Power/40679 Citadels of Power
# https://www.learnoutloud.com/Audio-Books/Literature/Ancient-and-Medieval-Classics/Classical-Mythology-The-Romans/30798 Classical Mythology: The Romans
# https://www.learnoutloud.com/Audio-Books/History/World-History/Cold-War/30799 Cold War
# https://www.learnoutloud.com/Audio-Books/History/Military-History/Command-and-Control-Great-Military-Leaders-from-Washington-to-the-TwentyFirst-Century/37624 Command and Control: Great Military Leaders from Washington to the Twenty-First Century
# https://www.learnoutloud.com/Audio-Books/Self-Development/Relationships/Communication-Matters-I-He-Said-She-Said/3492 Communication Matters I: He Said, She Said
# https://www.learnoutloud.com/Audio-Books/Self-Development/Relationships/Communication-Matters-II-Thats-Not-What-I-Meant!/30800 Communication Matters II: That's Not What I Meant!
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Islam/Comparing-Western-Christendom-and-the-Abode-of-Islam/31335 Comparing Western Christendom & the Abode of Islam
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Conflicts-That-Shaped-Pharaonic-Egypt/37627 Conflicts That Shaped Pharaonic Egypt
# https://www.learnoutloud.com/Audio-Books/Social-Sciences/Sociology/Crime-Scene-Investigation-Part-I/40681 Crime Scene Investigation, Part I
# https://www.learnoutloud.com/Audio-Books/Social-Sciences/Sociology/Crime-Scene-Investigation-Part-II/46695 Crime Scene Investigation, Part II
# https://www.learnoutloud.com/Audio-Books/Literature/Ancient-and-Medieval-Classics/Dante-and-His-Divine-Comedy/30801 Dante and His Divine Comedy
# https://www.learnoutloud.com/Audio-Books/Science/-/Darwin-Darwinism-and-the-Modern-World/5334 Darwin, Darwinism, and the Modern World
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Judaism/The-Dead-Sea-Scrolls/30842 The Dead Sea Scrolls
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/The-Decline-and-Fall-of-Rome/30843 The Decline and Fall of Rome
# https://www.learnoutloud.com/Audio-Books/Literature/Contemporary-Literature/Detective-Fiction/36666 Detective Fiction
# https://www.learnoutloud.com/Audio-Books/Philosophy/History-of-Philosophy/Discovering-the-Philosopher-in-You/3489 Discovering the Philosopher in You
# https://www.learnoutloud.com/Audio-Books/Science/-/Earth-and-the-Universe/31027 Earth and the Universe
# https://www.learnoutloud.com/Audio-Books/Science/Environment/The-Ecological-Planet-An-Introduction-to-Earths-Major-Ecosystems/30802 The Ecological Planet: An Introduction to Earth's Major Ecosystems
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Empire-of-Gold-A-History-of-Byzantine-Empire/30803 Empire of Gold: A History of Byzantine Empire
# https://www.learnoutloud.com/Audio-Books/Philosophy/Modern-Philosophy/The-Enlightenment-Reason-Tolerance-and-Humanity/30804 The Enlightenment: Reason, Tolerance, and Humanity
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Epochs-of-European-Civilization-Antiquity-To-Renaissance/30805 Epochs of European Civilization: Antiquity To Renaissance
# https://www.learnoutloud.com/Audio-Books/History/European-History/Epochs-of-European-Civilization-Reformation-to-the-TwentyFirst-Century/30806 Epochs of European Civilization: Reformation to the Twenty-First Century
# https://www.learnoutloud.com/Audio-Books/History/American-History/Essentials-of-the-Supreme-Court/36922 Essentials of the Supreme Court
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Eternal-Chalice-The-Grail-in-Literature-and-Legend/30807 Eternal Chalice: The Grail in Literature and Legend
# https://www.learnoutloud.com/Audio-Books/Philosophy/Ethics/Ethics-A-History-of-Moral-Thought/3502 Ethics: A History of Moral Thought
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Evaluating-Alexander-the-Great/36760 Evaluating Alexander the Great
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Evolutionary-Biology-I-The-Darwinian-Revolutions/46696 Evolutionary Biology I: The Darwinian Revolutions
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Evolutionary-Psychology-I/36887 Evolutionary Psychology I
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Evolutionary-Psychology-II/42890 Evolutionary Psychology II
# https://www.learnoutloud.com/Audio-Books/Philosophy/History-of-Philosophy/Faith-and-Reason-The-Philosophy-of-Religion/30808 Faith and Reason: The Philosophy of Religion
# https://www.learnoutloud.com/Audio-Books/Social-Sciences/-/The-Foundations-of-Language/31023 The Foundations of Language
# https://www.learnoutloud.com/Audio-Books/Literature/Contemporary-Literature/From-Here-to-Infinity-An-Exploration-of-Science-Fiction-Literature/30809 From Here to Infinity: An Exploration of Science Fiction Literature
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/From-Jesus-to-Christianity-A-History-of-the-Early-Church/30810 From Jesus to Christianity: A History of the Early Church
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/From-Troy-to-Constantinople/42891 From Troy to Constantinople
# https://www.learnoutloud.com/Audio-Books/History/World-History/Fueling-the-Planet/34207 Fueling the Planet
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/Law/Fundamental-Cases-The-TwentiethCentury-Courtroom-Battles-That-Changed-Our-Nation/30811 Fundamental Cases: The Twentieth-Century Courtroom Battles That Changed Our Nation
# https://www.learnoutloud.com/Audio-Books/Literature/European-Classics/The-Giants-of-French-Literature-Balzac-Flaubert-Proust-and-Camus/35657 The Giants of French Literature: Balzac, Flaubert, Proust, and Camus
# https://www.learnoutloud.com/Audio-Books/Literature/European-Classics/The-Giants-of-Irish-Literature-Wilde-Yeats-Joyce-and-Beckett/30844 The Giants of Irish Literature: Wilde, Yeats, Joyce and Beckett
# https://www.learnoutloud.com/Audio-Books/Literature/World-Classics/The-Giants-of-Russian-Literature-Turgenev--Dostoevsky-Tolstoy--and-Chekhov/30845 The Giants of Russian Literature: Turgenev, Dostoevsky, Tolstoy and Chekhov
# https://www.learnoutloud.com/Audio-Books/Science/Environment/Global-Warming-in-Earths-History/31333 Global Warming in Earth's History
# https://www.learnoutloud.com/Audio-Books/Science/Environment/Global-Warming-Global-Threat/14832 Global Warming, Global Threat
# https://www.learnoutloud.com/Audio-Books/Arts-and-Entertainment/Painting_-Architecture_-and-Sculpture/The-Glory-That-Was-Greece-Greek-Art-and-Archaeology/31317 The Glory That Was Greece: Greek Art and Archaeology
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/God-Wills-It!-Understanding-the-Crusades/30812 God Wills It!: Understanding the Crusades
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/The-Grandeur-That-Was-Rome-Roman-Art-and-Archaeology/36665 The Grandeur That Was Rome: Roman Art and Archaeology
# https://www.learnoutloud.com/Audio-Books/Literature/Drama/Greek-Drama-Tragedy-and-Comedy/30813 Greek Drama: Tragedy and Comedy
# https://www.learnoutloud.com/Audio-Books/Literature/Poetry/Heaven-in-a-Wild-Flower-The-British-Romantic-Poets/34206 Heaven in a Wild Flower: The British Romantic Poets
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Heaven-or-Heresy-A-History-of-the-Inquisition/30814 Heaven or Heresy: A History of the Inquisition
# https://www.learnoutloud.com/Audio-Books/Science/Astronomy/Heavens-Above-Stars-Constellations-and-the-Sky/30815 Heavens Above: Stars, Constellations, and the Sky
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/The-Bible/The-Hebrew-Bible/30846 The Hebrew Bible
# https://www.learnoutloud.com/Audio-Books/Philosophy/History-of-Philosophy/Hebrews-Greeks-and-Romans/3490 Hebrews, Greeks, and Romans
# https://www.learnoutloud.com/Audio-Books/History/Military-History/High-Seas-High-Stakes-Naval-Battles-That-Changed-History/30816 High Seas, High Stakes: Naval Battles That Changed History
# https://www.learnoutloud.com/Audio-Books/History/World-History/Hiroshima-and-the-Origins-of-the-Cold-War/31032 Hiroshima and the Origins of the Cold War
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/A-History-of-Ancient-Greece/30817 A History of Ancient Greece
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/The-History-of-Ancient-Israel/30847 The History of Ancient Israel
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/A-History-of-Ancient-Rome/3500 A History of Ancient Rome
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/A-History-of-Ancient-Sparta-Valor-Virtue-and-Devotion-in-the-Greek-Golden-Age/30899 A History of Ancient Sparta: Valor, Virtue, and Devotion in the Greek Golden Age
# https://www.learnoutloud.com/Audio-Books/Literature/Contemporary-Literature/The-History-of-Literary-Journalism/36674 The History of Literary Journalism
# https://www.learnoutloud.com/Audio-Books/History/American-History/History-of-Native-America/37625 History of Native America
# https://www.learnoutloud.com/Audio-Books/Languages/Vocabulary-Building/A-History-of-the-English-Language/30784 A History of the English Language
# https://www.learnoutloud.com/Audio-Books/History/European-History/The-History-of-Venice/35656 The History of Venice
# https://www.learnoutloud.com/Audio-Books/History/American-History/A-House-Reunited-How-America-Survived-the-Civil-War/30785 A House Reunited: How America Survived the Civil War
# https://www.learnoutloud.com/Audio-Books/Business/Investing-and-Finance/How-to-Get-Started-Investing/74926 How to Get Started Investing
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/Writing/How-Words-Can-Change-Reality/36705 How Words Can Change Reality
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Icons-of-the-Iron-Age-The-Celts-in-History/30818 Icons of the Iron Age: The Celts in History
# https://www.learnoutloud.com/Audio-Books/History/World-History/Ideas-that-Shaped-Mankind/30819 Ideas that Shaped Mankind
# https://www.learnoutloud.com/Audio-Books/Arts-and-Entertainment/Painting_-Architecture_-and-Sculpture/In-Michelangelos-Shadow/36888 In Michelangelo's Shadow
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/The-Incas-Inside-an-American-Empire/30848 The Incas: Inside an American Empire
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Introduction-to-Dinosaurs/35539 Introduction to Dinosaurs
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/-/Introduction-to-Human-Anatomy/31024 Introduction to Human Anatomy
# https://www.learnoutloud.com/Audio-Books/Business/-/Introduction-to-Macroeconomics-and-Microeconomics/31025 Introduction to Macroeconomics and Microeconomics
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Islam/Islam-and-the-West/30820 Islam and the West
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Judaism/Jerusalem-The-Contested-City/3493 Jerusalem: The Contested City
# https://www.learnoutloud.com/Audio-Books/History/World-History/Journeys-of-the-Great-Explorers-Columbus-To-Cook/30821 Journeys of the Great Explorers: Columbus To Cook
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Islam/Judaism-Christianity-and-Islam/3496 Judaism, Christianity and Islam
# https://www.learnoutloud.com/Audio-Books/History/American-History/The-Law-of-the-Land-A-History-of-the-Supreme-Court/3497 The Law of the Land: A History of the Supreme Court
# https://www.learnoutloud.com/Audio-Books/History/European-History/Liberty-and-its-Price-Understanding-the-French-Revolution/30822 Liberty and its Price: Understanding the French Revolution
# https://www.learnoutloud.com/Audio-Books/Biography/Artists/The-Life-and-Times-of-Mark-Twain/36889 The Life and Times of Mark Twain
# https://www.learnoutloud.com/Audio-Books/Science/-/The-Life-of-Charles-Darwin/31334 The Life of Charles Darwin
# https://www.learnoutloud.com/Audio-Books/Literature/Literary-History-and-Criticism/The-Literature-of-CS-Lewis/30823 The Literature of C.S. Lewis
# https://www.learnoutloud.com/Audio-Books/Science/Biology/The-Long-History-of-Practical-Genetics/36799 The Long History of Practical Genetics
# https://www.learnoutloud.com/Audio-Books/Literature/Ancient-and-Medieval-Classics/Masterpieces-of-Medieval-Literature/30824 Masterpieces of Medieval Literature
# https://www.learnoutloud.com/Audio-Books/Arts-and-Entertainment/-/Masterpieces-of-Western-Music/5335 Masterpieces of Western Music
# https://www.learnoutloud.com/Audio-Books/History/American-History/Masters-of-Enterprise/3494 Masters of Enterprise
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/The-Medieval-World-I-Kingdoms-Empires-and-War/30922 The Medieval World I: Kingdoms, Empires, and War
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/The-Medieval-World-II-Society-Economy-and-Culture/31318 The Medieval World II: Society, Economy, and Culture
# https://www.learnoutloud.com/Audio-Books/Literature/Ancient-and-Medieval-Classics/Monsters-Gods-and-Heroes/5336 Monsters, Gods, and Heroes
# https://www.learnoutloud.com/Audio-Books/Science/Archaeology/Myths-and-Mysteries-in-Archaeology/35658 Myths & Mysteries in Archaeology
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Buddhism/The-Nature-of-Religion/30937 The Nature of Religion
# https://www.learnoutloud.com/Audio-Books/Literature/Ancient-and-Medieval-Classics/Odyssey-of-the-West-I--A-Classic-Education-through-the-Great-Books-Hebrews-and-Greeks/30825 Odyssey of the West I - A Classic Education through the Great Books: Hebrews and Greeks
# https://www.learnoutloud.com/Audio-Books/Literature/Ancient-and-Medieval-Classics/Odyssey-of-the-West-II--A-Classic-Education-through-the-Great-Books-From-Athens-to-Rome-and-the-Gospels/30826 Odyssey of the West II - A Classic Education through the Great Books: From Athens to Rome and the Gospels
# https://www.learnoutloud.com/Audio-Books/Literature/Ancient-and-Medieval-Classics/Odyssey-of-the-West-III--A-Classic-Education-through-the-Great-Books-The-Medieval-World/30827 Odyssey of the West III - A Classic Education through the Great Books: The Medieval World
# https://www.learnoutloud.com/Audio-Books/Literature/European-Classics/Odyssey-of-the-West-IV--A-Classic-Education-through-the-Great-Books-Towards-Enlightenment/30828 Odyssey of the West IV - A Classic Education through the Great Books: Towards Enlightenment
# https://www.learnoutloud.com/Audio-Books/Literature/-/Odyssey-of-the-West-V--A-Classic-Education-through-the-Great-Books-Enlightenment-Revolution-and-Renewal/30829 Odyssey of the West V - A Classic Education through the Great Books: Enlightenment, Revolution, and Renewal
# https://www.learnoutloud.com/Audio-Books/Literature/-/Odyssey-of-the-West-VI--A-Classic-Education-through-the-Great-Books-The-Twentieth-Century/30921 Odyssey of the West VI - A Classic Education through the Great Books: The Twentieth Century
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Christianity/One-Holy-Catholic-and-Apostolic-A-History-of-the-Church-in-the-Middle-Ages/30830 One, Holy, Catholic, and Apostolic: A History of the Church in the Middle Ages
# https://www.learnoutloud.com/Audio-Books/Politics/U.S.-Government/The-People-and-the-Ballot-A-History-of-American-Party-Politics/30831 The People and the Ballot: A History of American Party Politics
# https://www.learnoutloud.com/Audio-Books/Social-Sciences/Multicultural-Studies/The-Peoples-Dynasty-Culture-and-Society-in-Modern-China/36667 The People's Dynasty: Culture and Society in Modern China
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/Law/Philosophy-and-the-Law-How-Judges-Reason/30832 Philosophy and the Law: How Judges Reason
# https://www.learnoutloud.com/Audio-Books/Philosophy/History-of-Philosophy/Philosophy-of-Mind/36890 Philosophy of Mind
# https://www.learnoutloud.com/Audio-Books/Philosophy/Ancient-and-Medieval-Philosophy/Philosophy-of-Thomas-Aquinas/31578 Philosophy of Thomas Aquinas
# https://www.learnoutloud.com/Audio-Books/Philosophy/Philosophers/Plato-and-Aristotle/3488 Plato and Aristotle
# https://www.learnoutloud.com/Audio-Books/Philosophy/Ancient-and-Medieval-Philosophy/The-Platonic-Tradition/72069 The Platonic Tradition
# https://www.learnoutloud.com/Audio-Books/Philosophy/Political-Philosophy/Political-Theory-The-Classic-Texts-and-Their-Continuing-Relevance/30833 Political Theory: The Classic Texts and Their Continuing Relevance
# https://www.learnoutloud.com/Audio-Books/Business/Economics/Principles-of-Economics-Business-Banking-Finance-and-Your-Everyday-Life/30834 Principles of Economics: Business, Banking, Finance, and Your Everyday Life
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Christianity/The-Quest-The-Historians-Search-for-Jesus-and-Muhammad/31579 The Quest: The Historians Search for Jesus and Muhammad
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Quick-History-of-Christianity-from-Jesus-to-the-Crusades/36921 Quick History of Christianity from Jesus to the Crusades
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Comparative-Religion/Religion-Myth-and-Magic/34205 Religion, Myth, and Magic
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Buddhism/Religions-of-the-East-Paths-to-Enlightenment/30835 Religions of the East: Paths to Enlightenment
# https://www.learnoutloud.com/Audio-Books/History/European-History/Resolute-Determination-Napoleon-and-the-French-Empire/31319 Resolute Determination: Napoleon and the French Empire
# https://www.learnoutloud.com/Audio-Books/Literature/Literary-History-and-Criticism/Rings-Swords-and-Monsters-Exploring-Fantasy-Literature/30836 Rings, Swords, and Monsters: Exploring Fantasy Literature
# https://www.learnoutloud.com/Audio-Books/Arts-and-Entertainment/Film_-Music_-Radio_-TV_-and-Pop-Culture/Rock-n-Roll-and-American-Society-Part-1/42889 Rock 'n' Roll and American Society, Part 1
# https://www.learnoutloud.com/Audio-Books/Literature/Drama/Romeo-and-Juliet-Lecture/31029 Romeo and Juliet Lecture
# https://www.learnoutloud.com/Audio-Books/History/European-History/Russian-Revolution-From-Tsarism-to-Bolshevism/31580 Russian Revolution: From Tsarism to Bolshevism
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/Law/The-Scopes-Monkey-Trial/31030 The Scopes Monkey Trial
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Second-Oldest-Profession-A-World-History-of-Espionage-Part-1/46697 Second Oldest Profession: A World History of Espionage, Part 1
# https://www.learnoutloud.com/Audio-Books/Science/Archaeology/Seven-Wonders-of-the-Ancient-World/40680 Seven Wonders of the Ancient World
# https://www.learnoutloud.com/Audio-Books/Literature/Drama/Shakespeare-Ten-Great-Comedies/30886 Shakespeare: Ten Great Comedies
# https://www.learnoutloud.com/Audio-Books/Literature/Drama/Shakespeare-The-Seven-Major-Tragedies/30837 Shakespeare: The Seven Major Tragedies
# https://www.learnoutloud.com/Audio-Books/History/Military-History/Six-Months-That-Changed-the-World/3498 Six Months That Changed the World
# https://www.learnoutloud.com/Audio-Books/Literature/Contemporary-Literature/Stranger-Than-Fiction-The-Art-of-Literary-Journalism/36668 Stranger Than Fiction: The Art of Literary Journalism
# https://www.learnoutloud.com/Audio-Books/Sports-and-Hobbies/Baseball/Take-Me-Out-to-the-Ballgame-A-History-of-Baseball-in-America/30838 Take Me Out to the Ballgame: A History of Baseball in America
# https://www.learnoutloud.com/Audio-Books/Politics/-/Teddy-Roosevelt/31028 Teddy Roosevelt
# https://www.learnoutloud.com/Audio-Books/History/American-History/The-Tiber-and-the-Potomac-Rome-America-and-Empires-of-Trust/30849 The Tiber and the Potomac: Rome, America, and Empires of Trust
# https://www.learnoutloud.com/Audio-Books/Self-Development/Relationships/Understanding-Conversations-Between-Women-and-Men/31336 Understanding Conversations Between Women and Men
# https://www.learnoutloud.com/Audio-Books/Arts-and-Entertainment/Film_-Music_-Radio_-TV_-and-Pop-Culture/Understanding-Movies-The-Art-and-History-of-Film/30850 Understanding Movies: The Art and History of Film
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Understanding-Nanotechnology/40682 Understanding Nanotechnology
# https://www.learnoutloud.com/Audio-Books/History/-/Understanding-the-French-Revolution/31031 Understanding the French Revolution
# https://www.learnoutloud.com/Audio-Books/Arts-and-Entertainment/Theater_-Opera_-and-Classical-Music/Understanding-the-Fundamentals-of-Classical-Music/3495 Understanding the Fundamentals of Classical Music
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Judaism/Understanding-the-Holocaust/30851 Understanding the Holocaust
# https://www.learnoutloud.com/Audio-Books/Science/Biology/Unseen-Diversity-The-World-of-Bacteria/30852 Unseen Diversity: The World of Bacteria
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/Religious-Figures/Upon-This-Rock-A-History-of-the-Papacy-From-Peter-to-John-Paul-II/30853 Upon This Rock: A History of the Papacy From Peter to John Paul II
# https://www.learnoutloud.com/Audio-Books/Politics/Political-Philosophy/Visions-of-Utopia-Philosophy-and-the-Perfect-Society/30854 Visions of Utopia: Philosophy and the Perfect Society
# https://www.learnoutloud.com/Audio-Books/Social-Sciences/Current-Events/Waking-Dragon-The-Emerging-Chinese-Economy-and-Its-Impact-on-the-World/30855 Waking Dragon: The Emerging Chinese Economy and Its Impact on the World
# https://www.learnoutloud.com/Audio-Books/Literature/Poetry/Walt-Whitman-and-the-Birth-of-Modern-American-Poetry/30856 Walt Whitman and the Birth of Modern American Poetry
# https://www.learnoutloud.com/Audio-Books/History/Ancient-and-Medieval-History/Wars-That-Made-the-Western-World-The-Persian-Wars-the-Peloponnesian-War/30857 Wars That Made the Western World: The Persian Wars, the Peloponnesian War
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/Writing/A-Way-with-Words-Part-I-Writing-Rhetoric-and-the-Art-of-Persuasion/30788 A Way with Words, Part I: Writing Rhetoric and the Art of Persuasion
# https://www.learnoutloud.com/Audio-Books/Literature/Literary-History-and-Criticism/A-Way-With-Words-Part-II-Approaches-to-Literature/30789 A Way With Words, Part II: Approaches to Literature
# https://www.learnoutloud.com/Audio-Books/Education-and-Professional/Writing/A-Way-With-Words-Part-III-Grammar-for-Adults/30786 A Way With Words, Part III: Grammar for Adults
# https://www.learnoutloud.com/Audio-Books/Literature/Poetry/A-Way-with-Words-Part-IV-Understanding-Poetry/30787 A Way with Words, Part IV: Understanding Poetry
# https://www.learnoutloud.com/Audio-Books/Science/Astronomy/What-is-a-Star/36920 What is a Star?
# https://www.learnoutloud.com/Audio-Books/Philosophy/History-of-Philosophy/What-is-Knowledge/31329 What is Knowledge?
# https://www.learnoutloud.com/Audio-Books/Religion-and-Spirituality/-/What-Is-Religion/31026 What Is Religion?
# https://www.learnoutloud.com/Audio-Books/Philosophy/Modern-Philosophy/What-Was-the-Enlightenment/36923 What Was the Enlightenment?
# https://www.learnoutloud.com/Audio-Books/Politics/Political-Figures/Winston-Churchill-Man-of-the-Century/30858 Winston Churchill: Man of the Century
# https://www.learnoutloud.com/Audio-Books/History/World-History/The-World-Before-Columbus/74934 The World Before Columbus
# https://www.learnoutloud.com/Audio-Books/Literature/Literary-History-and-Criticism/The-World-of-George-Orwell/37626 The World of George Orwell
# https://www.learnoutloud.com/Audio-Books/History/Military-History/World-War-I-The-Great-War-and-the-World-It-Made/30859 World War I: The Great War and the World It Made
# https://www.learnoutloud.com/Audio-Books/History/European-History/Worlds-First-Superpower-I-The-Rise-of-the-British-Empire-From-1497-To-1901/30860 World's First Superpower I: The Rise of the British Empire From 1497 To 1901
# https://www.learnoutloud.com/Audio-Books/History/European-History/Worlds-First-Superpower-II-From-Empire-To-Commonwealth-1901Present/30861 World's First Superpower II: From Empire To Commonwealth, 1901-Present
