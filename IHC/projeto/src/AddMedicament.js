import React, { useState } from 'react';
import { useParams } from 'react-router-dom';
import medicaments from './medicaments.js';
import { useNavigate } from 'react-router-dom';

const AddMedicament = () => {
    const [hour, setHour] = useState('');
    const [minute, setMinute] = useState('');
    const { id } = useParams(); // Get the medicine ID from the URL

    let idNumber = Number(id); // Convert the ID to a number

    const [user, setUser] = useState(() => {
        const userData = localStorage.getItem('user');
        return userData ? JSON.parse(userData) : '';
    });

    const navigate = useNavigate();


    const handleSubmit = (e) => {
        e.preventDefault();

        const newMedicament = {
            id: idNumber,
            hours: Number(hour),
            minutes: Number(minute), 
        }

        const newUser = {
            ...user,
            meds: [...user.meds, newMedicament],
        }

        localStorage.setItem('user', JSON.stringify(newUser));

        navigate('/wallet');        
    }

    const medicine = medicaments.find(medicament => medicament.id === idNumber);

    return (
        <div className="hero min-h-1000 bg-base-200 flex items-center justify-center">
            <div className="card flex-shrink-0 w-full max-w-xl shadow-2xl bg-base-100 p-8 m-20">
                <form
                    className="card-body text-center"
                    onSubmit={handleSubmit}
                >
                    <h1 className="text-5xl font-bold mb-8">Add {medicine.name} +</h1>

                    <div className="form-control mb-8">
                        <label className="label">
                            <span className="label-text text-xl"><strong>When it should take?</strong></span>
                        </label>
                        <input type="text" placeholder="HOURS" className="input input-bordered text-lg mb-2"
                            required
                            value={hour}
                            onChange={(e) => setHour(e.target.value)}
                        />
                        <input type="text" placeholder="MINUTES" className="input input-bordered text-lg"
                            required
                            value={minute}
                            onChange={(e) => setMinute(e.target.value)}
                        />
                    </div>
                    <div className="form-control mt-6">
                        <button className="btn btn-primary text-xl">Add it</button>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default AddMedicament;