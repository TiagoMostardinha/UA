const ProfileInfo = ({user}) => {
    return (
        <div>
            <ul className="space-y-4 text-xl">
                <li><strong>Name:</strong> {user.name}</li>
                <li><strong>Email:</strong> {user.email}</li>
                <li><strong>Password:</strong> {user.password}</li>
                <li><strong>Country:</strong> {user.country}</li>
                <li><strong>Telephone:</strong> {user.cellphone}</li>
                <li><strong>Sex:</strong> {user.sex}</li>
                <li><strong>Weight:</strong> {user.weight} kg</li>
                <li><strong>Height:</strong> {user.height} cm</li>
                <li><strong>Allergies:</strong>   {Array.isArray(user.allergies) && user.allergies.length > 0 ? user.allergies.join(', ') : 'No allergies.'}</li>
            </ul>
        </div>
    );
}

export default ProfileInfo;