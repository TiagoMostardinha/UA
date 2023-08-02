import HistoryList from "./HistoryList.js";
import medicamentsData from "./medicaments.js";
import { useState } from "react";

import WalletList from "./WalletList.js";
import { useNavigate } from 'react-router-dom';

const Wallet = () => {
    const [user, setUser] = useState(() => {
        const userData = localStorage.getItem('user');
        return userData ? JSON.parse(userData) : '';
    });

    const navigate = useNavigate();


    let medicaments = medicamentsData;
    return (
        <div className="min-h-screen flex p-10" >
            <div className="flex-2 w-2/3 mr-10">
                <div className="card shadow-2xl bg-base-100 p-12 min-h-full">
                    <h1 className="text-6xl font-bold mb-8 text-violet border-b-2 border-gray-500 pb-5">My Medicaments</h1>

                    {user.meds && <WalletList medicaments={medicaments} user={user} />}
                    <button className="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded" onClick={() => navigate('/search')}>
                        + Add
                    </button>
                </div>
            </div>
            <div className="flex-1 w-1/3">
                <div className="card shadow-2xl bg-base-100 p-12 m-12 ">
                    <h1 className="text-5xl font-bold text-violet border-b-2 border-gray-500 pb-5">History</h1>
                    {user.history && <HistoryList medicaments={medicaments} user={user} />}
                </div>
            </div>
        </div>
    );
}

export default Wallet;