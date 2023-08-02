import bandaidImg from './img/band-aid.svg';

const Footer = () => {
    return (
        <footer className="footer p-10 bg-neutral text-neutral-content">
            <div>
                <img className="w-20 mb-5" src={bandaidImg} alt="bandaid"></img>
                <p>DETI Industries Ltd.<br />Providing reliable tech since 2000's</p>
            </div>
            <div>
                <span className="footer-title">Made By:</span>
                <div className="grid grid-flow-col gap-4">
                    <ul>
                        <li>Tiago Mostardinha, 103944</li>
                        <li>Fábio Matias, 108011</li>
                        <li>Pablo Rollán, 112110</li>
                    </ul>
                </div>
            </div>
        </footer>
    );
}

export default Footer;