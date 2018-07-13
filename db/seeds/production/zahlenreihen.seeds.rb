# Test von Sven 
all_items = [
	# TestversionA
%w{99499  99489  99479  -  99469  3  2},
%w{-  457000  458000  459000  456000  3  1},
%w{89485  -  89685  89785  89585  3  1},
%w{342250  342240  342230  -  342220  3  2},
%w{25733  25743  -  25763  25753  3  1},
%w{227760  226760  225760  -  224760  3  2},
%w{238350  -  238370  238380  238360  3  1},
%w{125740  125640  125540  -  125440  3  2},
%w{-  98394  98395  98396  98393  3  1},
%w{74754  74654  74554  -  74454  3  2},
%w{475643  -  475645  475646  475644  3  1},
%w{34674  34673  -  34671  34672  3  2},
%w{239280  239380  239480  -  239580  3  1},
%w{-  365153  365152  365151  365154  3  2},
# TestVersionB
%w{77374  77364  77354  -  77344  4  2},
%w{-  643000  644000  645000  642000  4  1},
%w{32634  -  32834  32934  32734  4  1},
%w{748950  748940  748930  -  748920  4  2},
%w{39424  39434  -  39454  39444  4  1},
%w{384270  383270  382270  -  381270  4  2},
%w{569250  -  569270  569280  569260  4  1},
%w{477470  477370  477270  -  477170  4  2},
%w{-  29884  29885  29886  29883  4  1},
%w{25763  25663  25563  -  25463  4  2},
%w{341112  -  341114  341115  341113  4  1},
%w{86626  86625  -  86623  86624  4  2},
%w{365230  365330  365430  -  365530  4  1},
%w{-  174833  174832  174831  174834  4  2},
#TestversionC
%w{59572  59562  59552  -  59542  5  2},
%w{-  317000  318000  319000  316000  5  1},
%w{25697  -  25897  25997  25797  5  1},
%w{123570  123560  123550  -  123540  5  2},
%w{43924  43934  -  43954  43944  5  1},
%w{275950  274950  273950  -  272950  5  2},
%w{338460  -  338480  338490  338470  5  1},
%w{788590  788490  788390  -  788290  5  2},
%w{-  39657  39658  39659  39656  5  1},
%w{47543  47443  47343  -  47243  5  2},
%w{743452  -  743454  743455  743453  5  1},
%w{37177  37176  -  37174  37175  5  2},
%w{276230  276330  276430  -  276530  5  1},
%w{-  384653  384652  384651  384654  5  2},
#TestversionD
%w{63644  63634  63624  -  63614  6  2},
%w{-  952000  953000  954000  951000  6  1},
%w{76599  -  76799  76899  76699  6  1},
%w{987990  987980  987970  -  987960  6  2},
%w{54632  54642  -  54662  54652  6  1},
%w{454120  453120  452120  -  451120  6  2},
%w{226650  -  226670  226680  226660  6  1},
%w{244860  244760  244660  -  244560  6  2},
%w{-  89882  89883  89884  89881  6  1},
%w{18439  18339  18239  -  18139  6  2},
%w{351192  -  351194  351195  351193  6  1},
%w{49896  49895  -  49893  49894  6  2},
%w{134410  134510  134610  -  134710  6  1},
%w{-  733444  733443  733442  733445  6  2},
#Testversion E
%w{25745  25735  25725  -  25715  7  2},
%w{-  376000  377000  378000  375000  7  1},
%w{12346  -  12546  12646  12446  7  1},
%w{457550  457540  457530  -  457520  7  2},
%w{76743  76753  -  76773  76763  7  1},
%w{477210  476210  475210  -  474210  7  2},
%w{112930  -  112950  112960  112940  7  1},
%w{544530  544430  544420  -  544410  7  2},
%w{-  28912  28913  28914  28911  7  1},
%w{77443  77343  77243  -  77143  7  2},
%w{984563  -  984565  984566  984564  7  1},
%w{57397  57396  -  57394  57395  7  2},
%w{157310  157410  157510  -  157610  7  1},
%w{-  528813  528812  528811  528814  7  2}
]
test_info = "Dieser Test erfordert die Fähigkeit,
Gesetzmäßigkeiten von Zahlenfolgen zu erkennen und die jeweils fehlende Zahl der
dargebotenen Zahlenreihe zu identifizieren."

test1 = TestZR.create(name: "Zahlenreihen", short_info: test_info, len: 72, time:600, subject: "Mathematik", 
	student_access: true, construct: "Zahlenreihen",archive: false, shorthand: "ZR", level: "bis 1.000.000")
it = test1.items.build(itemtext: "hallo", itemtype: -1,  itemview: "items/studentbased/zahlenreihentest/1hallo")
it.save

i = 0
while i < all_items.length do
	it = test1.items.build(itemtext: all_items[i].join(","), shorthand: all_items[i][6] , itemtype: 0, difficulty: all_items[i][5], itemview: "items/studentbased/zahlenreihentest/2testItem")
	it.save
	i = i + 1
end

it = test1.items.build(itemtext: "Ende", itemtype: 1, itemview: "items/studentbased/zahlenreihentest/3ende")
it.save

test1.save