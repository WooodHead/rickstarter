
import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';


import { logOut } from '../../actions/session_actions';

class LeftNav extends React.Component {
  render() {
    return (
        <nav className='left-nav'>
          <ul>
            <li>
              <Link to="/" className="explore-button nav-icon nav-item">
                <i className="fa fa-compass"></i>
                Explore
              </Link>
            </li>
            <li>
              <Link to="/" className='nav-item'>
                Start a project
              </Link>
            </li>
          </ul>
        </nav>
    )
  }
}

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LeftNav);