import React from "react";
import { Link } from "react-router-dom";
import { useState, useEffect } from 'react';

const Search = () => {
    const medicaments = JSON.parse(localStorage.getItem("medicaments"));
    const [filteredMedicaments, setFilteredMedicaments] = React.useState(medicaments);
    const [selectedSymptoms, setSelectedSymptoms] = useState([]);


    const textSearch = () => {
        const input = document.getElementById("textSearch");

        if (input.value === "") {
            setFilteredMedicaments(medicaments);
            return;
        }
        const filter = input.value.toLowerCase();
        const names = medicaments.map((medicament) => medicament.name);
        const filteredNames = names.filter((name) => name.toLowerCase().includes(filter));
        const filteredMedicaments = medicaments.filter((medicament) => filteredNames.includes(medicament.name));
        setFilteredMedicaments(filteredMedicaments);
    };

    const handleCheckboxChange = (event) => {
        const symptom = event.target.value;
        const isChecked = event.target.checked;

        if (isChecked) {
            setSelectedSymptoms((prevState) => [...prevState, symptom]);
        } else {
            setSelectedSymptoms((prevState) => prevState.filter((s) => s !== symptom));
        }
    };

    const filterMedicaments = (symptoms) => {
        if (symptoms.length === 0) {
          setFilteredMedicaments(medicaments);
          return;
        }
      
        const hasOtherSelected = symptoms.includes("other");
        const predefinedSymptoms = ['fever', 'backache', 'indigestion', 'heartburn', 'insomnia', 'headache', 'inflammation'];
      
        const uniqueSymptoms = medicaments.map((medicament) => {
          return medicament.symptoms.filter((symptom) => !predefinedSymptoms.includes(symptom));
        }).flat();
      
        const updatedFilteredMedicaments = medicaments.filter((medicament) => {
      
          return symptoms.every((symptom) => {
            return medicament.symptoms.includes(symptom);
          });
        });
      
        setFilteredMedicaments(updatedFilteredMedicaments);
      };
      
      useEffect(() => {
        filterMedicaments(selectedSymptoms);
      }, [selectedSymptoms]);


    return (
        <div className="min-h-screen">
            <div className="flex flex-col items-center space-y-4 py-10">
                <div className="row search-container flex justify-center items-center">
                    <div className="form-control">
                        <div className="input-group">
                            <input type="text" placeholder="Search…" className="input input-bordered w-full" id="textSearch" onChange={textSearch} />
                            <button className="btn btn-square" onClick={textSearch}>
                                <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" /></svg>
                            </button>
                        </div>
                    </div>
                </div>
                <div className="row search-container flex justify-center items-center">
                    <div className="flex flex-row space-x-4">
                        <div className="row search-container flex justify-center items-center h-auto space-x-16">
                            <div className="flex flex-row space-x-4">
                                <div className="form-control" id="fevers">
                                    <label className="">
                                        <input type="checkbox" value="fevers" onChange={handleCheckboxChange} />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">Fevers</span>
                                    </label>
                                </div>
                                <div className="form-control" id="backache">
                                    <label className="">
                                        <input type="checkbox" value="backache" onChange={handleCheckboxChange} />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">Back Pain</span>
                                    </label>
                                </div>
                                <div className="form-control" id="indigestion">
                                    <label className="">
                                        <input type="checkbox" value="indigestion" onChange={handleCheckboxChange} />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">Indigestion</span>
                                    </label>
                                </div>
                                <div className="form-control" id="heartburn">
                                    <label className="">
                                        <input type="checkbox" value="heartburn" onChange={handleCheckboxChange} />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">Heartburn</span>
                                    </label>
                                </div>
                                <div className="form-control" id="insomnia">
                                    <label className="">
                                        <input type="checkbox" value="insomnia" onChange={handleCheckboxChange} />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">Acid Reflux</span>
                                    </label>
                                </div>
                                <div className="form-control" id="headache">
                                    <label className="">
                                        <input type="checkbox" value="headache" onChange={handleCheckboxChange} />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">Headache</span>
                                    </label>
                                </div>
                                <div className="form-control" id="inflammation">
                                    <label className="">
                                        <input type="checkbox" value="inflammation" onChange={handleCheckboxChange} />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">Inflammation</span>
                                    </label>
                                </div>
                                <div className="form-control" id="">
                                    <label className="">
                                        <input type="checkbox" />
                                        <span className="checkbox-mark"></span>
                                        <span className="ml-1">+ Others</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="grid grid-cols-1 gap-4">
                    <div className="medicaments-list">
                        {/* foreach element in medicaments show the element */}
                        {filteredMedicaments.map((medicament) => (
                            <div className="medicament-item flex items-center justify-between bg-gray-100 p-4" key={medicament.id}>
                                <div className="flex-grow">
                                    <h2 className="text-2xl font-bold text-gray-800">{medicament.name}</h2>
                                    <p className="text-gray-600">{medicament.description}</p>
                                    <Link to={`/drug/${medicament.id}`} className="btn btn-primary">Go There</Link>
                                </div>
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Search;