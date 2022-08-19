import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var loginLabel: UILabel = {
            let label = UILabel()
            label.text = "Login"
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 35)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 14)
        textField.placeholder = "nzhiltsov"
        textField.layer.cornerRadius = 20
        textField.textAlignment = .left
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
        
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 14)
        textField.placeholder = "Password"
        textField.layer.cornerRadius = 20
        textField.textAlignment = .left
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
        
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(named: "loginButtonColor")
        button.layer.cornerRadius = 20
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
    private lazy var streakLeftView: UIView = {
        let streakLeftView = UIView()
        streakLeftView.backgroundColor = UIColor(named: "streakViewColor")
        streakLeftView.translatesAutoresizingMaskIntoConstraints = false
        return streakLeftView
    }()
        
    private lazy var streakRightView: UIView = {
        let streakRightView = UIView()
        streakRightView.backgroundColor = UIColor(named: "streakViewColor")
        streakRightView.translatesAutoresizingMaskIntoConstraints = false
        return streakRightView
    }()
        
    private lazy var connectWithLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = .systemGray
        label.font = .boldSystemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private lazy var facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(named: "facebookButtonColor")
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 12)
        button.layer.cornerRadius = 20
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
    private lazy var twitterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(named: "twitterButtonColor")
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 12)
        button.layer.cornerRadius = 20
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
    private lazy var existAccount: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textColor = UIColor(named: "accountLabelColor")
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sing up", for: .normal)
        button.setTitleColor(UIColor(named: "signUpButtonColor"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
    private lazy var socialMediaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
        
    private lazy var authorizationStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

