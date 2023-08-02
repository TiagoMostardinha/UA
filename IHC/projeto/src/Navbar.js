import { Link } from 'react-router-dom';
import userImg from './img/user.svg';
import walletImg from './img/wallet.png';

const NavBar = ({user}) => {

    return (
        <div className="navbar bg-base-100">
            <div className="flex-1">
                <Link to='/' className="btn btn-ghost normal-case text-xl">Pharmasysm</Link>
            </div>
            <div className="flex-none">
                <ul className="menu menu-horizontal px-1">
                    {!user && <li><Link to='/login'>Log-in</Link></li>}
                    {!user && <li><Link to='/signin'>Sign-in</Link></li>}

                    {user && <li><Link to='/search'>
                        <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" /></svg>
                    </Link></li>}

                    {user && <li><Link to='/profile'>Hi {user.name} !<img src={userImg} alt='user' className='h-7'></img></Link></li>}
                    {user && <li><Link to='/wallet'><img src={walletImg} alt='wallet'></img></Link></li>}

                    {user && <div className="dropdown dropdown-end">
                        <p tabIndex={0} className="btn btn-ghost m-1" >
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" className="inline-block w-5 h-5 stroke-current" ><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M4 6h16M4 12h16M4 18h16"></path></svg>
                        </p>
                        <ul tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-56">
                            <li><Link to='/profile'>Profile</Link></li>
                            <li><Link to='/wallet'>Wallet</Link></li>
                            <li><Link to='/aboutus'>About Us</Link></li>
                        </ul>
                    </div>}
                </ul>
            </div>
        </div>
    );
}

export default NavBar;