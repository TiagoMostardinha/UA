import user from './img/user.svg';

const ProfileT1 = () => {
    const weight = JSON.parse(localStorage.getItem("user"))['weight'];
    const height = JSON.parse(localStorage.getItem("user"))['height'];
    const gender = JSON.parse(localStorage.getItem("user"))['gender'];
    const allergies = JSON.parse(localStorage.getItem("user"))['allergies'];
    return (
        <div className="flex justify-center items-center h-auto m-20">
            <div className="card w-auto bg-base-100 shadow-xl"  id="perfil">
                <div style={{ display: "grid", gridTemplateColumns: "repeat(2, 1fr)", gridGap: 20 }}>
                    <div>
                        <figure className="px-10 pt-10">
                            <div className="avatar">
                                <div className="w-40 mask mask-squircle">
                                    <img src={user} />
                                </div>
                            </div>
                        </figure>
                        <div className="card-body items-center text-center">
                            <div className="card-actions">
                                <button className="btn btn-primary">Edit</button>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div className="card-body items-right text-right">
                            <div className="tabs">
                                <a className="tab tab-bordered tab-active" >Medical Info</a>
                                <a className="tab tab-bordered" href='/profile2'>Personal Info</a>
                            </div>
                            <ul className="menu bg-base-100 w-56 p-2 rounded-box">
                                <li>
                                    <a>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" className="bi bi-clipboard2-data" viewBox="0 0 16 16">
                                            <path
                                                d="M9.5 0a.5.5 0 0 1 .5.5.5.5 0 0 0 .5.5.5.5 0 0 1 .5.5V2a.5.5 0 0 1-.5.5h-5A.5.5 0 0 1 5 2v-.5a.5.5 0 0 1 .5-.5.5.5 0 0 0 .5-.5.5.5 0 0 1 .5-.5h3Z"/>
                                            <path
                                                d="M3 2.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 0 0-1h-.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1H12a.5.5 0 0 0 0 1h.5a.5.5 0 0 1 .5.5v12a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5v-12Z"/>
                                            <path
                                                d="M10 7a1 1 0 1 1 2 0v5a1 1 0 1 1-2 0V7Zm-6 4a1 1 0 1 1 2 0v1a1 1 0 1 1-2 0v-1Zm4-3a1 1 0 0 0-1 1v3a1 1 0 1 0 2 0V9a1 1 0 0 0-1-1Z"/>
                                        </svg>
                                        Weight: {weight} kg
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            fill="currentColor" className="bi bi-arrow-up" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
                                                  d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
                                        </svg>
                                        Height: {height} cm
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" className="bi bi-gender-ambiguous" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
                                                  d="M11.5 1a.5.5 0 0 1 0-1h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-3.45 3.45A4 4 0 0 1 8.5 10.97V13H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V14H6a.5.5 0 0 1 0-1h1.5v-2.03a4 4 0 1 1 3.471-6.648L14.293 1H11.5zm-.997 4.346a3 3 0 1 0-5.006 3.309 3 3 0 0 0 5.006-3.31z"/>
                                        </svg>
                                        Gender: {gender}
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" className="bi bi-prescription2" viewBox="0 0 16 16">
                                            <path d="M7 6h2v2h2v2H9v2H7v-2H5V8h2V6Z"/>
                                            <path
                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v10.5a1.5 1.5 0 0 1-1.5 1.5h-7A1.5 1.5 0 0 1 3 14.5V4a1 1 0 0 1-1-1V1Zm2 3v10.5a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 .5-.5V4H4ZM3 3h10V1H3v2Z"/>
                                        </svg>
                                        Allergies:
                                    </a>
                                </li>
                                <li>
                                    <a style={{textAlign:"left"}}>
                                        {allergies}
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}





export default ProfileT1;
