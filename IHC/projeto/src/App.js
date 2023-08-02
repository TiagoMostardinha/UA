import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import NavBar from './Navbar.js';
import Home from './Home.js';
import Footer from './Footer.js';
import Wallet from './Wallet.js';
import Search from './Search.js';
import SignIn from './SignIn.js';
import AboutUs from './AboutUs.js';
import LogIn from './LogIn.js';
import Drug from './Drug.js'
import medicamentsData from './medicaments.js';
import Profile from './Profile.js';
import AddMedicament from './AddMedicament.js';

function App() {
  let user = null;
  if (localStorage.getItem("user")) {
    user = JSON.parse(localStorage.getItem("user"));
  }

  console.log(user);

  return (
    <Router>
      <div className="App">
        <NavBar user={user} />
        <div className="content">
          <Routes>
            <Route exact path='/' element={<Home user={user} />} />
            <Route exact path='/profile' element={<Profile />} />
            <Route exact path='/signin' element={<SignIn />} />
            <Route exact path='/login' element={<LogIn />} />
            <Route exact path='/aboutus' element={<AboutUs />} />
            <Route exact path='/add/:id' element={<AddMedicament/>} />
            <Route exact path='/wallet' element={<Wallet user={user}/>} />
            <Route path="/drug/:id" element={<Drug />} />
            <Route exact path='/search' element={<Search/>} />
          </Routes>
        </div>
        <Footer />
      </div>
    </Router>
  );
}

export default App;
