import profilePic from './img/profilePicture.jpg';
import editPencil from './img/pencil.svg';
import { useState } from 'react';
import ProfileInfo from './ProfileInfo';
import ProfileEdit from './ProfileEdit';


const Profile = () => {
  const [user, setUser] = useState(() => {
    const userData = localStorage.getItem('user');
    return userData ? JSON.parse(userData) : '';
  });
  const [isEditing, setIsEditing] = useState(false);


  const handleSubmit = (e) => {
    e.preventDefault();
    setIsEditing(!isEditing);
    setUser(JSON.parse(localStorage.getItem('user')));
  }


  return (
    <div className="min-h-1000 bg-gray-100 p-5">
      <div className="card bg-base-100 shadow-xl bg-white p-10">
        <div className="grid grid-cols-2 gap-4 pl-5">
          <div className="col-span-1">
            <div className="flex items-center mb-6">
              <span className="text-5xl font-bold text-violet">Profile Information</span>
              <span className="bg-white hover:bg-gray-300 text-black font-semibold py-2 px-4 rounded-full border border-white hover:border-white">
                <img src={editPencil} alt="edit" className="w-8 h-8" onClick={handleSubmit} />
              </span>
            </div>

            {isEditing ? <ProfileEdit onSubmit={handleSubmit}/> : <ProfileInfo user={user} />}
            
          </div>
          <div className="col-span-1">
            <div className="grid grid-rows-2 gap-4 h-full">
              <div className="row-span-3 flex justify-center items-start border-b-2 border-gray-500 pb-10">
                <img src={profilePic} alt="Profile" className="w-100 h-100 rounded-full mb-4" />
              </div>
              <div className="row-span-1">
                <div className="card">
                  <h2 className="text-2xl font-bold mb-4 text-violet">Medical History</h2>
                  <ul className="space-y-2">
                    <li><h2 className="text-lg font-bold text-gray-900">Paracetamol</h2>
                    <p>Last taken at: 12:55</p></li>
                    <li><h2 className="text-lg font-bold text-gray-900">Brufen</h2>
                    <p>Last taken at: 8:00</p></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Profile;