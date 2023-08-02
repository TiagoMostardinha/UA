import { useState } from "react";
import { useNavigate } from 'react-router-dom';


const SignIn = () => {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [country, setCountry] = useState('');
    const navigate = useNavigate();

    const handleSubmit = (e) => {
        e.preventDefault();

        if(country === '') {
            alert('Please select a country');
            return;
        }

        localStorage.setItem('user', JSON.stringify(
            {
                name: name,
                email: email,
                password: password,
                country: country,
                telephone: "",
                weight: 0,
                height: 0,
                sex: "",
                allergies: [],
                meds: [            {
                    id: 1,
                    hours: 12,
                    minutes: 55,  
                  }
                ],
            }
        ));

        navigate('/profile');
        document.location.reload();
    }

    return (
        <div className="hero min-h-1000 bg-base-200 flex items-center justify-center">
            <div className="card flex-shrink-0 w-full max-w-xl shadow-2xl bg-base-100 p-8 m-20">
                <form
                    className="card-body text-center"
                    onSubmit={handleSubmit}
                >
                    <h1 className="text-6xl font-bold mb-8">Sign In</h1>
                    <div className="form-control">
                        <label className="label">
                            <span className="label-text text-xl">Name</span>
                        </label>
                        <input type="text" placeholder="name" className="input input-bordered text-lg"
                            required
                            value={name}
                            onChange={(e) => setName(e.target.value)}
                        />
                    </div>
                    <div className="form-control">
                        <label className="label">
                            <span className="label-text text-xl">Email</span>
                        </label>
                        <input type="text" placeholder="email" className="input input-bordered text-lg" 
                            required
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                        />
                    </div>
                    <div className="form-control">
                        <label className="label">
                            <span className="label-text text-xl">Password</span>
                        </label>
                        <input type="password" placeholder="password" className="input input-bordered text-lg" 
                            required
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                        />
                    </div>
                    <div className="form-control">
                        <label className="label">
                            <span className="label-text text-xl">Country</span>
                        </label>
                        <select className="select select-bordered w-full text-lg"
                            value={country}
                            onChange={(e) => setCountry(e.target.value)}
                        >
                            <option value="">Select a country</option>
                            <option value="usa">Portugal</option>
                            <option value="canada">Canada</option>
                            <option value="uk">United Kingdom</option>
                            <option value="australia">Australia</option>
                            <option value="germany">Germany</option>
                        </select>
                    </div>
                    <div className="form-control mt-6">
                        <button className="btn btn-primary text-xl">Sign In</button>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default SignIn;