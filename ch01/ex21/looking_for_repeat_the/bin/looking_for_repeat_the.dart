void main() {
  final validExp =
      RegExp(r'\bthe +the\b', caseSensitive: false, multiLine: true);

  var count = 0;
  for (var item in validExp.allMatches(text)) {
    print(text.substring(item.start, item.end));
    count++;
  }
  print('• ' * count);

}

const text = '''
    I

  In the corner of a first-class smoking carriage, Mr Justice Wargrave, lately retired from the the bench, puffed at a cigar and ran an interested eye through the political news in The Times.

  He laid the paper down and glanced out of the the window. They were running now through Somerset. He glanced at his watch—another two hours to go.

  He went over in his mind all that had appeared in the the  papers about Soldier Island. There had been its original purchase by an American millionaire who was crazy about yachting—and an account of the luxurious modern house he had built on this little island off the Devon coast. The unfortunate fact that the new third wife of the American millionaire was a bad sailor had led to the subsequent putting up of the house and island for sale. Various glowing advertisements of it had appeared in the papers. Then came the first bald statement that it had been bought—by a Mr Owen. After that the rumours of the gossip writers had started. Soldier Island had really been bought by Miss Gabrielle Turl, the Hollywood film star! She wanted to spend some months there free from all publicity! Busy Bee had hinted delicately that it was to be an abode for Royalty??! Mr Merryweather had had it whispered to him that it had been bought for a honeymoon—Young Lord L—had surrendered to Cupid at last! Jonas knew for a fact that it had been purchased by the Admiralty with a view to carrying out some very hush-hush experiments!

  Definitely, Soldier Island was news!

  From his pocket Mr Justice Wargrave drew out a letter. The handwriting was practically illegible but words here and there stood out with unexpected clarity. Dearest Lawrence…such years since I heard anything of you…must come to Soldier Island…the most enchanting place…so much to talk over…old days…communion with nature…bask in sunshine…12.40 from Paddington…meet you at Oakbridge…and his correspondent signed herself with a flourish his ever Constance Culmington.

  Mr Justice Wargrave cast back in his mind to remember when exactly he had last seen Lady Constance Culmington. It must be seven—no, eight years ago. She had then been going to Italy to bask in the sun and be at one with Nature and the contadini. Later, he had heard, she had proceeded to Syria where she proposed to bask in a yet stronger sun and live at one with Nature and the bedouin.

  Constance Culmington, he reflected to himself, was exactly the sort of woman who would buy an island and surround herself with mystery! Nodding his head in gentle approval of his logic, Mr Justice Wargrave allowed his head to nod…

  He slept…

  II

  Vera Claythorne, in a third-class carriage with five other travellers in it, leaned her head back and shut her eyes. How hot it was travelling by train today! It would be nice to get to the sea! Really a great piece of luck getting this job. When you wanted a holiday post it nearly always meant looking after a swarm of children—secretarial holiday posts were much more difficult to get. Even the agency hadn’t held out much hope.

  And then the letter had come.

  ‘I have received your name from the Skilled Women’s Agency together with their recommendation. I understand they know you personally. I shall be glad to pay you the salary you ask and shall expect you to take up your duties on August 8th. The train is the 12.40 from Paddington and you will be met at Oakbridge station. I enclose five £1 notes for expenses.

  Yours truly,

  Una Nancy Owen.’

  And at the top was the stamped address, Soldier Island, Sticklehaven, Devon…

  Soldier Island! Why, there had been nothing else in the papers lately! All sorts of hints and interesting rumours. Though probably they were mostly untrue. But the house had certainly been built by a millionaire and was said to be absolutely the last word in luxury.

  Vera Claythorne, tired by a recent strenuous term at school, thought to herself, ‘Being a games mistress in a third-class school isn’t much of a catch…If only I could get a job at some de
cent school.’

  And then, with a cold feeling round her heart, she thought: ‘But I’m lucky to have even this. After all, people don’t like a Coroner’s Inquest, even if the Coroner did acquit me of all blame!’

  He had even complimented her on her presence of mind and courage, she remembered. For an inquest it couldn’t have gone better. And Mrs Hamilton had been kindness itself to her—only Hugo—but she wouldn’t think of Hugo!

  Suddenly, in spite of the heat in the carriage she shivered and wished she wasn’t going to the sea. A picture rose clearly before her mind. Cyril’s head, bobbing up and down, swimming to the rock…Up and down—up and down…And herself, swimming in easy practised strokes after him—cleaving her way through the water but knowing, only too surely, that she wouldn’t be in time…

  The sea—its deep warm blue—mornings spent lying out on the sands—Hugo—Hugo who had said he loved her…

  She must not think of Hugo…

  She opened her eyes and frowned across at the man opposite her. A tall man with a brown face, light eyes set rather close together and an arrogant, almost cruel mouth.

  She thought to herself:

  I bet he’s been to some interesting parts of the world and seen some interesting things…
  ''';
