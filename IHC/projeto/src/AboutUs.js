
import tiagoImg from './img/tiago.png';
import fabioImg from './img/fabio.png';
import pabloImg from './img/pablo.png';

const AboutUs = () => {
    return (
        <div className="aboutus py-16">
            <div>
                <div className="flex justify-center pb-8">
                    <h1 className="text-4xl">About Us</h1>
                </div>
                <div className="flex justify-center">
                    <p className="text-xl">We are a group of students from the University of Aveiro, and we are developing this project for the Human-Computer Interaction course.</p>
                </div>
                <div className="flex justify-center">
                    <p className="text-xl">The goal of this project is to create a web application that allows users to keep track of their medications.</p>
                </div>
                <div className="flex justify-center">
                    <p className="text-xl">We hope you enjoy it!</p>
                </div>
            </div>
            <div className="cards-container m-20">

                <div className="flex justify-around items-center flex-row">
                    <div className="card w-96 h-96 shadow-xl ">
                        <figure><img src={fabioImg} alt="Search Medication" /></figure>
                        <div className="card-body">
                            <h2 className="card-title">Fábio Matias</h2>
                            <p>108011 - Computer Science and Engineering</p>
                        </div>
                    </div>

                    <div className="card w-96 h-96 shadow-xl">
                        <figure><img src={tiagoImg} alt="Search Medication" /></figure>
                        <div className="card-body">
                            <h2 className="card-title">Tiago Mostardinha</h2>
                            <p>103944 - Computer Engineering and Telematics</p>
                        </div>
                    </div>

                    <div className="card w-96 h-96 shadow-xl ">
                        <figure><img src={pabloImg} alt="Search Medication" /></figure>
                        <div className="card-body">
                            <h2 className="card-title">Pablo Rollán</h2>
                            <p>112110 - Computer Science and Engineering</p>
                        </div>
                    </div>
                </div>
            </div >
        </div>
    );
}

export default AboutUs;