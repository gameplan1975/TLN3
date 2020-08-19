# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@aaa.com", name: "admin")
User.create(email: "tester@aaa.com", name: "tester")

Player.create(admin: true, game: 0, correct: 0, message: "管理人です", favorite_genre: "世界史", user_id: 1)
Player.create(admin: false, game: 0, correct: 0, message: "テスターです", favorite_genre: "日本史", user_id: 1)

Genre.create(name: "世界史", memo: "世界の歴史上のできごとです。日本のできごとは「日本史」のジャンルにご登録ください", user_id: 1)
Genre.create(name: "日本史", memo: "日本の歴史上のできごとです。\nこのサイトでは旧暦ではなく、西暦（グレゴリオ暦）で統一しています。", user_id: 1)
Genre.create(name: "IT", memo: "コンピュータに関するできごとです。\nバージョンの違いやリリースの場所など、回答するときに混乱しないよう明確化をお願いします。", user_id: 1)

Question.create(name: "本能寺の変", year: 1582, month: 6, memo: "尾張国の戦国大名、織田信長が家臣の明智光秀に討たれた事件。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "平城京遷都", year: 710, month: 4, memo: "元明天皇により藤原京から遷都。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "墾田永年私財法発布", year: 743, month: 6, memo: "聖武天皇によって発布された、土地の私有を認める法律。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "応仁の乱", year: 1467, month: 2, memo: "足利将軍家や有力守護大名である斯波氏、畠山氏の家督争いに、細川勝元や山名宗全らが介入して行われた内乱。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "西南戦争", year: 1877, month: 2, memo: "日本国内最後の内乱。熊本城攻略のため西郷隆盛が鹿児島を発った２月１５日を発生月に設定しました。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "薬子の変", year: 810, month: 2, memo: "嵯峨天皇と対立した平城上皇が藤原薬子を伴って平城京に移った政変。坂上田村麻呂らの活躍により早期に解決。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "平安京遷都", year: 794, month: 11, memo: "桓武天皇により長岡京から遷都。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "関ヶ原の戦い", year: 1600, month: 10, memo: "豊臣秀吉没後の主導権を廻り、五大老の徳川家康と毛利輝元らが美濃国関ヶ原で激突した争い。", playable: true, user_id: 1, genre_id: 2)
Question.create(name: "第一次世界大戦の勃発", year: 1914, month: 7, memo: "セルビアの青年によるオーストリア皇太子暗殺をきっかけとして勃発。", playable: true, user_id: 1, genre_id: 1)
Question.create(name: "乙巳の変", year: 645, month: 6, memo: "中大兄皇子らが蘇我蝦夷、入鹿親子を討った事件。\nこれを機に、大化改新が行われる。", playable: true, user_id: 1, genre_id: 2)

Question.create(name: "Catalina(MacOS)リリース", memo: "Mac OSX", playable: true, user_id: 1, genre_id: 2, year: 2019, month: 10)
Question.create(name: "El Capitan (MacOS)リリース", memo: "Mac OS X", playable: true, user_id: 1, genre_id: 2, year: 2015, month: 9)
Question.create(name: "Lion (Mac OS)リリース", memo: "覚えてる？", playable: true, user_id: 1, genre_id: 2, year: 2011, month: 7)
Question.create(name: "Mojave (Mac OS) リリース", memo: "これ、結構好き", playable: true, user_id: 1, genre_id: 2, year: 2018, month: 9)
Question.create(name: "Intel Core M リリース", memo: "CPU", playable: true, user_id: 1, genre_id: 2, year: 2014, month: 9) 
Question.create(name: "PDF仕様の無償公開開始", memo: "", playable: true, user_id: 1, genre_id: 2, year: 1993, month: 6)
Question.create(name: "ファミリーコンピュータ　発売", memo: "衝撃でした", playable: true, user_id: 1, genre_id: 2, year: 1983, month: 7) 
Question.create(name: "プレイステーション（初代）発売", memo: "", playable: true, user_id: 1, genre_id: 2, year: 1994, month: 12)
Question.create(name: "プレイステーション４　日本発売", memo: "", playable: true, user_id: 1, genre_id: 2, year: 2014, month: 2)
Question.create(name: "プレイステーション４　アメリカ発売", memo: "日本発売と時期が違います", playable: true, user_id: 1, genre_id: 2, year: 2013, month: 11)
Question.create(name: "Nintendo Switch 発売", memo: "", playable: true, user_id: 1, genre_id: 2, year: 2017, month: 3)
Question.create(name: "HTML 2.0 リリース", memo: "", playable: true, user_id: 1, genre_id: 2, year: 1995, month: 11)
Question.create(name: "スティーブ・ジョブス逝去", memo: "結構前なんですね", playable: true, user_id: 1, genre_id: 2, year: 2011, month: 10)
Question.create(name: "モールス信号機の特許取得", memo: "モールスさんが発明", playable: true, user_id: 1, genre_id: 2, year: 1940, month: 6)

Question.create(name: "タラス河畔の戦い", memo: "唐とアッバース朝の戦い", playable: true, user_id: 1, genre_id: 1, year: 751, month: 3)
Question.create(name: "トルデシリャス条約の締結", memo: "スペインとポルトガルが南米大陸での国境線を確定した条約", playable: true, user_id: 1, genre_id: 1, year: 1494, month: 6)
Question.create(name: "東ローマ帝国の滅亡", memo: "オスマン帝国のコンスタンティノープル占領により滅亡", playable: true, user_id: 1, genre_id: 1, year: 1453, month: 4)
Question.create(name: "コロンブス新大陸発見", memo: "サン・サルバドル島に１１日上陸", playable: true, user_id: 1, genre_id: 1, year: 1492, month: 6)
Question.create(name: "三十年戦争の勃発", memo: "18日のプラハ窓外放出事件により教皇派と新教派の対立が決定的となる", playable: true, user_id: 1, genre_id: 1, year: 1618, month: 5)
Question.create(name: "カノッサの屈辱", year: 1077, month: 1, memo: "聖職叙任権を巡って教皇と対立していた神聖ローマ皇帝ハインリヒ４世が雪中３日間裸足のまま祈り続け、教皇に赦しを願った事件", playable: true, user_id: 1, genre_id: 1)
Question.create(name: "クレルモン公会議", year: 1095, month: 11, memo: "教皇ウルバヌスが十字軍の開催のために召集した宗教会議。Dieu le Veult!", playable: true, user_id: 1, genre_id: 1)
Question.create(name: "ニケーア公会議", year: 325, month: 5, memo: "キリスト教初の全国公会議。主にアリウス派に対する扱いについて話し合われた。", playable: true, user_id: 1, genre_id: 1)
Question.create(name: "エフェソス公会議", year: 431, month: 6, memo: "東ローマ皇帝テオドシウス２世によって召集された公会議。マリアに対する考え方の違いによりコンスタンチノープル大司教ネストリウスが破門される。", playable: true, user_id: 1, genre_id: 1)
Question.create(name: "カルケドン公会議", year: 451, month: 10, memo: "東ローマ皇帝マルキアヌスによって召集された公会議。エフェソス公会議で排斥されたネストリウス派を改めて排斥することを確認した。", playable: true, user_id: 1, genre_id: 1)
Question.create(name: "コンスタンツ公会議", year: 1414, month: 1, memo: "神聖ローマ皇帝ジギスムントの提唱によって開催された公会議。対立教皇を廃して教会分裂を収束し、ウィクリフやフスなどを異端とした。", playable: true, user_id: 1, genre_id: 1)