# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Project.destroy_all
Reward.destroy_all

users = User.create([{email: 'rick@aol.com', image: File.open("app/assets/images/rick.png"), name: 'Rick Sanchez', password: 'hunter12'},
  {email: 'npsandler@gmail.com', image: File.open("app/assets/images/nps.png"), name: 'Nathaniel Sandler', password: 'hunter12'},
  {email: 'morty@aol.com', image: File.open("app/assets/images/morty.png"), name: 'Morty Smith', password: 'hunter12'},
  {email: 'jerry@aol.com', image: File.open("app/assets/images/jerry.png"), name: 'Jerry Smith', password: 'hunter12'},
  {email: 'demo', name: 'Mr. Meseeks', password: 'hunter12'}])



Project.create!({title: 'Anatomy Park', image: File.open("app/assets/images/Anatomy_Park.png"), description: 'Help us fund the worlds premier new theme park', details: 'This park will be the first of its kind. Utilizing cutting-edge shrink technology, visitors of the park will be able to enter a real human body! Inside they will find a full amusement park with rides and other attractions that are fun for the whole family. Back this project today!',  end_date: "27 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 10000, creator_id: users[0].id, category: 'Theatre'})
Project.create!({title: 'Help me take 2 strokes off my golf swing', image: File.open("app/assets/images/golf.png"), description: 'how hard can it be?', details: 'Jerry, Mr. Meseeks & friends need your help to get two strokes off his golf swing. We have been trying to accomplish this goal for days with no sucess and now we need your help!',  end_date: "27 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 3000, creator_id: users[3].id, category: 'Games'})
Project.create!({title: 'Fund a new laboratory', image: File.open("app/assets/images/lab.png"), description: 'A new top of the line lab for inventions ', details: 'Rick Sanchez and Morty Smith are opening a new, state-of-the-art laboratory in Town and need your support! We will be inventing things like portal guns, cloning machines, and time control devices that will make vastly improve the quality of life of people all over the world',  end_date: "30 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 4500, creator_id: users[0].id, category: 'Design'})
Project.create!({title: 'New basketball hoop for the park', image: File.open("app/assets/images/basketball.png"), description: 'A newly renovated basketball hoop for the park', details: "The park's basketball court has been run down for far too long. We ask that people suppport our dream of renovating the court so that the town's youth can have a place to go and learn leadership skills and responsibilty through athletics.",  end_date: "27 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 2345, creator_id: users[2].id, category: 'Games'})
Project.create!({title: 'Counsel of Ricks', image: File.open("app/assets/images/CofRs.png"), description: 'The Ricks need your Help', details: "The counsel of Ricks have been sabotaged! Someone has been traveling from dimension to dimension, neutralizing our Ricks for reasons not yet known to us. If we do not put an end to this soon, it could mean the distruction of mankind throughout the entire known multiverse. Please back this project today!",  end_date: "27 Jul 2017 09:54:17 -0400", funding_goal: 50000, creator_id: users[0].id, category: 'Theatre'})
Project.create!({title: 'Fund a new local saloon', image: File.open("app/assets/images/saloon.png"), description: 'A new saloon could be right in your backyard!', details: 'This saloon would be a great pit stop for all sorts of adventurers and heros',  end_date: "27 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 20000, creator_id: users[2].id, category: 'Food'})
Project.create!({title: 'Meseeks Box', image: File.open("app/assets/images/meseeks.png"), description: 'A phenomenal new product to help you with everyday tasks', details: "Meet Mr Meseeks: a humanoid creature whos purpose in life is to help you achieve your goals. Upon pressing the button on the box, a Meeseks will be created with the sole purpose for helping you complete any task at hand. Once completed, they dissapear for ever, but don't worry -- they prefer it that way. Once this project is funded, you can forget about ever having to vacuum, do dishes, or grocery shop. Mr. Meseeks are just a button press away! ",  end_date: "5 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 40000, creator_id: users[4].id, category: 'Technology'})
Project.create!({title: 'Robot Dog Technology', image: File.open("app/assets/images/robodog.png"), description: 'The first of its kind in dog mech suits', details: "Have you ever wish your dog was a little bit smarter and more obedient? The answer is finally here with our new patent-pending technology. You beloved pet will not only gain an IQ of 150 and be able to communicate with you via our dogtalk technology, but the suit will also allow your dog to use opposable hands and feet! What could possibly go wrong? Forget about dogs having accidents on your carpet -- preorder your Robot Dog Technology today",  end_date: "27 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 6500, creator_id: users[0].id, category: 'Technology'})
Project.create!({title: 'Block Party!', image: File.open("app/assets/images/party.png"), description: 'help us fund an annual block party at the park', details: "Beth and Jerry leave on a trip to experience the Titanic 2, a perfect recreation of the Titanic experience. Jerry is immensely excited to reenact moments from the movies while Beth is hesitant. Beth orders Rick, Morty, and Summer to not trash the house while they are gone. She threatens to put an end to Rick and Morty's adventures. The trio agree as Beth and Jerry drive off. Summer attempts to throw a party with the house empty to help become popular. Rick denies her, and tells her that he's throwing a party of his own.
Beth and Jerry arrive at Titanic 2, which is a perfect recreation of the sinking of the ship. Jerry sees the line for the bow and tries to bring Beth along. Beth blows off his request, and shoves a nearby maid Lucy to join him instead. The two bond quickly over a mutual love for the Titanic. Meanwhile, the party at the Smith Residence begins. Some of the party-goers include Glip Glops, Brad, Bird Person, Gear Head, Squanchy and many more. The party begins to amp up and Morty confronts Rick about their decisions. Jessica appears, and Morty shifts his attention to talking to her.
Jerry and Lucy continue to enjoy themselves on the ship, but the planned sinking of the ship goes wrong, and the ship doesn't sink due to technical difficulties.
Rick's party is getting crazier, Summer blows off a friend of hers named Nancy, which gets her some flak from Rick. Then Abradolf Lincoler smashes through a wall. He gets into a brief altercation with Brad who promptly beats him up. Jessica is upset and runs outside, and Morty joins her to console her. While showing her various gadgets in the garage, he walks in on Squanchy masturbating (or 'squanching,' as he tells them what he's doing) in a closet, and in the process accidentally knocks over a contraption that teleports the entire house into a weird planet. After Rick takes a look outside, he lets the party-goers know that everything is fine.
Morty begins to freak out about the repercussions of his actions. Rick calms him down and tells him to collect some Collaxion Crystals, which could be used to take them back. Rick pushes Abradolf Lincler to join Morty, and Summer pushes Nancy to join him as well. The three set out to find the crystals.
The technical difficulties have upset Jerry, but Beth remains unamused. Lucy finds Jerry and takes him to a storage room where she quickly strips naked and asks him to draw her. Jerry attempts to break away but she pulls a gun on him and threatens him. She forces him to a prop car, where she attempts to force herself onto him. Beth arrives in time, and knocks her out with the book she was reading.
Morty, Nancy, and Lincler find the crystals but are attacked by a two-headed. Lincler fends off the beast while Morty and Nancy collect the crystals. He is wounded badly, and gives Morty a death confession. The two return to the party and give the crystals to Rick who promptly crushes them and snorts them. Rick's eyes turn blue and he begins a 'Rick Dance' along with other party-goers. Rick admits that he can take them back whenever he wanted. Morty, furious after being lied to, throws the rest of the crystals outside.
Beth and Jerry pack up their car to leave and Lucy attaches herself to the underside of the car. She holds on briefly before falling and being run over, presumably killing her. Meanwhile, Morty officially ends the party and forces everyone out. The Smith House is in total shambles, and the cleanup effort begins. Morty is still immensely upset at Rick, but a conversation with Bird Person reveals to him that Rick is masking a great deal of inner pain, and shows Morty that if he truly wanted to stop dealing with his grandfather, he should just leave the place destroyed. At first, Morty agrees and that this might be the best thing that ever happened to him because he will be free of Rick forever. Birdperson then teaches him another saying that means 'Whatever lets you sleep at night.''
Beth and Jerry arrive home, and Birdperson tells him to make his decision as he leaves with Tammy. Morty realizes he does want to continue on his adventures with Rick and pleads with Rick to do something. Rick uses a device that completely freezes time for the entire world, allowing them to clean up at their own pace. Summer, Morty, and Rick then leave their parents and the world frozen for an immeasurable amount of time, having fun with each other.",  end_date: "15 Jul 2017 09:54:17 -0400", funding_goal: 50000, current_funding: 45000, creator_id: users[0].id, category: 'Theatre'})


Reward.create({project_id: Project.all.first.id, title: "One day pass to the park", pledge_amount: 20, description: "Enjoy a day in the works premier theme park"})
Reward.create({project_id: Project.all.first.id, title: "Day pass to the park for two", pledge_amount: 35, description: "A day in the works premier theme park for you and a friend!"})
Reward.create({project_id: Project.all.first.id, title: "Season pass to the park", pledge_amount: 200, description: "Spend the summer at the park!", num_allowed: 100})
Reward.create({project_id: Project.all.first.id, title: "Unlimited lifetime pass", pledge_amount: 1000, description: "For our most loyal supporters, lifetime unlimited access to the park!", num_allowed: 3})


Reward.create({project_id: Project.all.second.id, title: "Thank you", pledge_amount: 5, description: "A thank you from Jerry for your help and support!"})
Reward.create({project_id: Project.all.second.id, title: "A golf outing together", pledge_amount: 50, description: "Lets celebrate on the links. This reward includes one game of 18 holes of golf with Jerry!"})

Reward.create({project_id: Project.all.third.id, title: "A Small Invention", pledge_amount: 50, description: "Once the Laboratory is complete, we will send you a small invention!"})
Reward.create({project_id: Project.all.third.id, title: "Medium Invention", pledge_amount: 500, description: "Once the Laboratoy is complete, we will send you a medium invention"})
Reward.create({project_id: Project.all.third.id, title: "Large Invention", pledge_amount: 5000, description: "Once the Laboratoy is complete, we will send you a medium invention"})


Reward.create({project_id: Project.all.fourth.id, title: "Small Reward", pledge_amount: 100, description: "A small thank you to you, for supporting our dreams!"})
Reward.create({project_id: Project.all.fourth.id, title: "Medium Reward", pledge_amount: 1000, description: "A medium thank you to you, for supporting our dreams!"})
Reward.create({project_id: Project.all.fourth.id, title: "Large Reward", pledge_amount: 1000, num_allowed: 10, description: "A large thank you to you, for supporting our dreams!"})

Reward.create({project_id: Project.all.fifth.id, title: "Small Reward", pledge_amount: 100, description: "A small thank you to you, for supporting our dreams!"})
Reward.create({project_id: Project.all.fifth.id, title: "Medium Reward", pledge_amount: 1000, description: "A medium thank you to you, for supporting our dreams!"})
Reward.create({project_id: Project.all.fifth.id, title: "Large Reward", pledge_amount: 1000, num_allowed: 10, description: "A large thank you to you, for supporting our dreams!"})
