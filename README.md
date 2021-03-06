[Rickstarter](https://rickstarter2017.herokuapp.com)

Rickstarter is full-stack web application clone of Kickstarter, created in 9 days using Ruby on Rails on the backend with a PostgreSQL database and React-Redux on the frontend.

Features and Implementation
============================
Project Creation
---------------

The largest component of the project was a series of pages where users are able to create a project and the associated rewards.

![creation](https://github.com/npsandler/rickstarter/blob/master/app/assets/images/creation.gif)

The biggest challenge in the implementation was to allow for users to change between Project and Reward forms as they saw fit without losing their partially completed forms. The solution was to implement a slice of state to track the incomplete forms, only to be sent to the backend upon the users submission.


```javascript

update(property) {
  return e => this.setState({ [property]: e.target.value });
  this.props.receiveIncompleteForm(this.state.rewards);
}
render() {
  let rewardItems = [];
  this.props.incompleteForm.rewards.forEach(
    (reward, idx) => (
      rewardItems.push(
        <RewardFormItem
          key={idx}
          idx={idx}
          receiveIncompleteReward={this.props.receiveIncompleteReward}
          reward={reward} />)
    )
  )
  return (
    <section className="full-project-create">
      <section className='page-header'>
      <h1 className='full-header'>Set your rewards.</h1>
      <h2 className='sub-header'>Invite backers to be a part of the creative experience by offering rewards like a copy of what you’re making, a special experience, or a behind-the-scenes look into your process.</h2>
        <ul className="errors">{this.errors()}</ul>
      </section>

      <section className="content-container">
          {rewardItems}
          <button className='submit-button reward-button' onClick={this.addRewardForm}>Add reward</button>
        </section>
      </section>
    );
  }

  ```



Backing Projects
---------------


Upon creation, user are able to pledge towards the projects funding goal. Upon click, the reward item creates a Pledge, a relationship between the reward and the current user. The the app then does the necessary computations to account for the new total funding amount and supporters, then rerenders.

![pledge](https://github.com/npsandler/rickstarter/blob/master/app/assets/images/pledge.gif)



Index, Search, and Categories View
----------------------------------


Rickstarter offers multiple ways for users to search through existing projects. The home page provides a default view of all projects in the database, while search and category views allow them to filter results to their liking.



![categories](https://github.com/npsandler/rickstarter/blob/master/app/assets/images/categories-markdown.png)

---

![search](https://github.com/npsandler/rickstarter/blob/master/app/assets/images/search.gif)

---

In the projects controller, the different filters were handled with a simple if-else statement checking the params that were sen with the backend request.



```ruby

def index
  if params[:category]
    @projects = Project.includes(:creator, :backers, :rewards).where(category: params[:category])
  elsif params[:query]
    @projects = Project.includes(:creator, :backers, :rewards).where('title LIKE (?) OR description LIKE (?)', "%#{params[:query]}%", "%#{params[:query]}%")
  else
    @projects = Project.includes(:creator, :backers, :rewards)
  end
end

```



Future Plans for the Project
============================

I plan on continuing to improve upon the already implemented features and also adding the below features.

### Robust reward backing


I plan on working to implement a more robust pledge feature, where users can track the pledges they have made and alter or remove them before projects end.

### Project Profile

The project creator should be able to manage their project, editing information and updating as they see fit
