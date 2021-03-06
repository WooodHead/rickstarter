import React from 'react';
import ProjectIndexItem from '../projects/project_index_item';
import { withRouter } from 'react-router-dom';


class SearchIndex extends React.Component {
  constructor(props) {
    super(props);
    this.projects = null;
  }

  componentDidMount() {
    this.projects = this.props.requestSearch(this.props.match.url.slice(8));
  }

  componentWillReceiveProps(nextProps){
    if(this.props.location.pathname.slice(8) !== nextProps.match.url.slice(8)) {
      this.props.requestSearch(nextProps.match.url.slice(8));
    }
  }

  render() {
    if (this.projects) {
      const projects = Object.keys(this.props.projects).map( key => this.props.projects[key]);

      return (
        <section className="search">
          <label className='search-label'>Search results</label>
          <ul className="search-results">
            { projects.map(project => <li className="category-item"><ProjectIndexItem key={project.id} project={project} /></li>)}
          </ul>
        </section>
      )
    } else {
      return(
        null
      );
    }
  }

}

export default withRouter(SearchIndex);
