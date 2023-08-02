const WalletList = ({ medicaments, user }) => {
    const userMedsIds = user.meds.map(med => med.id);
    const filteredMeds = medicaments.filter(med => userMedsIds.includes(med.id));

    const now = new Date();

    
    return (
        <div className="medicaments-list">
            {filteredMeds.map((medicament) => (
                <div className="medicament-item flex items-center justify-between bg-gray-100 p-4" key={medicament.id}>
                    <div className="flex-grow">
                        <h2 className="text-2xl font-bold text-gray-800">{medicament.name}</h2>
                        <p className="text-gray-600">{medicament.description}</p>
                    </div>
                    <span className="countdown font-mono text-2xl">
                        <span style={{ "--value": user.meds.find(med => med.id === medicament.id).hours - now.getHours() }}></span>h
                        <span style={{ "--value": user.meds.find(med => med.id === medicament.id).minutes - now.getMinutes() }}></span>m
                    </span>
                </div>
            ))}
        </div>

    );
}

export default WalletList;