import { Link } from 'react-router-dom';
import { useState } from 'react';
import { useEffect } from 'react';
const SignIn = () => {
    const [user, setUser] = useState({
        "name": "John",
        "user_meds": [
          {
            "id": 1,
            "hours": 5,
            "minutes": 55,
          }
        ],
        "history": [
          2
        ],
        uname: '',
        email: '',
        password: '',
        country: '',
        weight: '',
        height: '',
        telephone: '',
        sex: '',

      });
    
      const handleClick = (e) => {
        e.preventDefault();
        const genderSelectElement = document.getElementById("genderSelect");
        const selectedOption = genderSelectElement.options[genderSelectElement.selectedIndex];
        const selectedValue = JSON.parse(selectedOption.getAttribute("data-value"));
        // Update the user state with the new information entered in the form
        setUser({
            "name": "John",
            "user_meds": [
              {
                "id": 1,
                "hours": 5,
                "minutes": 55,
              }
            ],
            "history": [
              2
            ],
            uname: document.getElementById('uname').value,
            email: document.getElementById('email').value,
            password: document.getElementById('password').value,
            country: document.getElementById('country').value,
            weight: document.getElementById('weight').value,
            height: document.getElementById('height').value,
            telephone: document.getElementById('telephone').value,
            allergies: document.getElementById('allergies').value,
            gender: selectedValue.gender,




        });
      
        // Log the updated user object to the console
        localStorage.setItem("user", JSON.stringify(user));
        window.location.replace("http://localhost:3000/");
      };
      useEffect(() => {
        // Log the updated user object to the console whenever the state changes
        localStorage.setItem("user", JSON.stringify(user));
        const userFromStorage = JSON.parse(localStorage.getItem("user"));
        console.log(userFromStorage);
      }, [user]);
    

    return (
        <div className="signin">
            <div class="flex justify-center">
                <h1 className="text-5xl">Sign In</h1>
            </div>
            <div class="container mx-sm pl-96 pt-16 pb-2">
                <h1>Name</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24">
                <input type="text" placeholder="" className="input input-bordered input-sm w-3/5" id='uname' />
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>E-mail</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24">
                <input type="text" placeholder="" className="input input-bordered input-sm w-3/5" id='email' />
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>Password</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24">
                <input type="password" placeholder="" className="input input-bordered input-sm w-3/5" id='password' />
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>Country</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24"> 
                <input type="text" placeholder="" className="input input-bordered input-sm w-3/5" id='country'/>
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>Weight (in kg)</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24">
                <input type="text" placeholder="" className="input input-bordered input-sm w-3/5" id='weight'/>
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>Height (in cm)</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24">
                <input type="text" placeholder="" className="input input-bordered input-sm w-3/5" id='height'/>
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>Telephone</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24">
                <input type="text" placeholder="" className="input input-bordered input-sm w-3/5" id='telephone'/>
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>Allergies</h1>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-24">
                <input type="text" placeholder="" className="input input-bordered input-sm w-3/5" id='allergies'/>
            </div>
            <div class="container mx-sm pl-96 pt-4 pb-2">
                <h1>Sex</h1>
            </div>
            <div class="container mx-lg pl-96 pb-4">
                <select class="select select-bordered select-sm w-full max-w-xs" id="genderSelect">
                    <option disabled selected>Select One</option>
                    <option data-value='{"gender":"female"}'>Female</option>
                    <option data-value='{"gender":"male"}'>Male</option>
                </select>
            </div>
            <div class="container mx-lg flex justify-center pb-4 pl-auto">
                <Link to='/'><button onClick={handleClick} class="btn">Sign In</button></Link>
                
            </div>
        </div>
    );
}
export default SignIn;