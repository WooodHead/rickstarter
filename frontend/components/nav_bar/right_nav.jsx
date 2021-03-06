import React from 'react';
import { Link } from 'react-router-dom';
import { logOut } from '../../actions/session_actions'
import SearchBar from './search_bar';

const loggedOutLinks = () => (
  <nav  className='right-nav'>
    <ul>
      <li>

        <SearchBar />

      </li>
      <li>
        <Link to="/login" className="header-link nav-item login-link" >Log in</Link>
      </li>
      <li>
        <Link to="/signup" className="header-link nav-item signup-link" >Sign up</Link>
      </li>
    </ul>

  </nav>
);

const loggedInLinks = (currentUser, logOut) => (
  <nav  className='right-nav'>
    <ul>
      <li>
        <SearchBar />
      </li>
      <li>
        <div className="header-link" onClick={logOut}>
          <img className='user-icon' src={currentUser.image_url} />
        </div>
      </li>
    </ul>

  </nav>
);

const RightNav = ({ currentUser, logOut }) => (
  currentUser ? loggedInLinks(currentUser, logOut) : loggedOutLinks()
);

export default RightNav;
