const HistoryList = ({ medicaments, user }) => {

    const userMedsIds = user.history.map(med => med);
    console.log(userMedsIds);

    return (
        <div className="history-item\ border-b-2 border-gray-200 p-2">
            {userMedsIds.map((medicament) => (
                <div className="h-item" key={medicament.name}>
                    <h2 className="text-lg font-bold text-gray-900">{medicament.name}</h2>
                    <p>Last taken at:{medicament.hours}</p>
                </div>
            ))}
        </div>

    );
}

export default HistoryList;