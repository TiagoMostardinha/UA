import React, { useState } from 'react';

const ProfileEdit = ({ onSubmit }) => {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [country, setCountry] = useState('');
    const [telephone, setTelephone] = useState('');
    const [sex, setSex] = useState('');
    const [weight, setWeight] = useState('');
    const [height, setHeight] = useState('');
    const [allergies, setAllergies] = useState([]);
    const [newAllergy, setNewAllergy] = useState("");

    const handleSubmit = (e) => {
        e.preventDefault();

        if (country === '') {
            alert('Please select a country');
            return;
        }

        localStorage.setItem('user', JSON.stringify(
            {
                name: name,
                email: email,
                password: password,
                country: country,
                telephone: telephone,
                weight: weight,
                height: height,
                sex: sex,
                allergies: allergies,
                meds: [],
            }
        ));

        onSubmit(e);
    }

    const handleAddAllergy = () => {
        if (newAllergy) {
            setAllergies([...allergies, newAllergy]);
            setNewAllergy("");
        } else {
            alert("Please enter an allergy");
        }
    };


    return (
        <div>
            <form onSubmit={handleSubmit}>
                <ul className="space-y-4 text-xl">
                    <li><strong>Name:</strong>
                        <input type="text" placeholder="Type here" className="input w-full ml-5 max-w-xs"
                            required
                            value={name}
                            onChange={(e) => setName(e.target.value)}
                        />
                    </li>
                    <li><strong>Email:</strong>
                        <input type="text" placeholder="Type here" className="input w-full ml-5  max-w-xs"
                            required
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                        /></li>
                    <li><strong>Password:</strong>
                        <input type="text" placeholder="Type here" className="input w-full ml-5 max-w-xs"
                            required
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                        /></li>
                    <li><strong>Country:</strong>
                        <select className="select select-bordered w-full text-lg max-w-xs ml-5"
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
                    </li>
                    <li><strong>Telephone:</strong>
                        <input type="text" placeholder="Type here" className="input w-full ml-5 max-w-xs"
                            required
                            value={telephone}
                            onChange={(e) => setTelephone(e.target.value)}
                        /></li>
                    <li><strong>Sex:</strong>
                        <select className="select select-bordered w-full text-lg max-w-xs ml-5"
                            value={sex}
                            onChange={(e) => setSex(e.target.value)}
                        >
                            <option value="">Select a Sex</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </li>
                    <li><strong>Weight:</strong>
                        <input type="text" placeholder="Type here" className="input w-full ml-5 max-w-xs"
                            required
                            value={weight}
                            onChange={(e) => setWeight(e.target.value)} /> kg</li>
                    <li><strong>Height:</strong>
                        <input type="text" placeholder="Type here" className="input w-full ml-5 max-w-xs"
                            required
                            value={height}
                            onChange={(e) => setHeight(e.target.value)} /> cm</li>
                    <li><strong>Allergies: </strong>
                        {allergies.join(', ')}


                    </li>
                    <li>
                        <input
                            type="text"
                            placeholder="Type allergy"
                            className="input w-full ml-5 mr-5 max-w-xs"
                            value={newAllergy}
                            onChange={(e) => setNewAllergy(e.target.value)}
                        />
                        <button
                            type="button"
                            className="bg-white hover:bg-gray-300 text-black py-2 px-4 rounded-full border border-white hover:border-white"
                            onClick={handleAddAllergy}
                        >
                            Add Allergy +
                        </button>
                    </li>
                </ul>
                <div className="form-control mt-6">
                    <button className="btn btn-primary text-xl mr-10">Confirm</button>
                </div>
            </form>
        </div>
    );
}

export default ProfileEdit;