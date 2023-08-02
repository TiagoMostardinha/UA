import { useState } from "react";
import { Link } from 'react-router-dom';
import { useNavigate } from 'react-router-dom';
import userData from './userData.js';

const LogIn = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const navigate = useNavigate();

    const handleSubmit = (e) => {
        e.preventDefault();

        if(email === '' || password === '') {
            alert('Please fill all the fields');
            return;
        }

        let user = userData.find(user => user.email === email);
        if(user === undefined) {
            alert('User not found');
            return;
        } else if(user.password !== password) {
            alert('Wrong password');
            return;
        } else {
            localStorage.setItem('user', JSON.stringify(user));
            navigate('/profile');
            document.location.reload();
        }

    }

    return (
        <div className="hero min-h-1000 bg-base-200 flex items-center justify-center">
            <div className="card flex-shrink-0 w-full max-w-xl shadow-2xl bg-base-100 p-8 m-20">
                <form
                    className="card-body text-center"
                    onSubmit={handleSubmit}
                >
                    <h1 className="text-6xl font-bold mb-8">Login In</h1>
                    <div className="form-control mb-4">
                        <label className="label">
                            <span className="label-text text-xl">Email</span>
                        </label>
                        <input type="text" placeholder="email" className="input input-bordered text-lg"
                            required
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                        />
                    </div>
                    <div className="form-control mb-8">
                        <label className="label">
                            <span className="label-text text-xl">Password</span>
                        </label>
                        <input type="password" placeholder="password" className="input input-bordered text-lg"
                            required
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                        />
                    </div>
                    <div className="form-control mt-6">
                        <button className="btn btn-primary text-xl">Login</button>
                    </div>
                </form>
            </div>
        </div>
    );
}
export default LogIn;