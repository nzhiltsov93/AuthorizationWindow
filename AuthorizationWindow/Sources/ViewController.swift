import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 14)
        textField.placeholder = "nzhiltsov"
        textField.layer.cornerRadius = 20
        textField.setLeftIcon(UIImage(systemName: "person") ?? (UIImage(imageLiteralResourceName: "")))
        textField.setRightIcon(UIImage(systemName: "checkmark.circle") ?? (UIImage(imageLiteralResourceName: "")))
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
        textField.setLeftIcon(UIImage(systemName: "lock") ?? (UIImage(imageLiteralResourceName: "")))
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
        button.titleLabel?.font = .boldSystemFont(ofSize: 12)
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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGradient()
        
        setupLabels()
        setupTextFields()
        setupButtons()
        setupView()
        setupSocialMediaStackView()
        setupSingUpStackView()
    }

    // MARK: - Setup Outlets
        
    private func setupLabels() {
        view.addSubview(loginLabel)
        view.addSubview(connectWithLabel)
        
        loginLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.snp.centerY).multipliedBy(0.25)
        }
            
        connectWithLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view.snp.bottom).multipliedBy(0.75)
        }
    }
        
    private func setupTextFields() {
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
            
        loginTextField.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginLabel.snp.centerY).multipliedBy(1.5)
            make.width.equalTo(view.snp.width).multipliedBy(0.75)
            make.height.equalTo(45)
        }
            
        passwordTextField.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginTextField.snp.centerY).multipliedBy(1.2)
            make.width.equalTo(view.snp.width).multipliedBy(0.75)
            make.height.equalTo(45)
        }
    }
        
    private func setupButtons() {
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        
        loginButton.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.top.equalTo(passwordTextField.snp.centerY).multipliedBy(1.3)
            make.width.equalTo(view.snp.width).multipliedBy(0.75)
            make.height.equalTo(45)
        }
            
        forgotPasswordButton.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginButton.snp.centerY).multipliedBy(1.1)
        }
    }
        
    private func setupView() {
        view.addSubview(streakLeftView)
        view.addSubview(streakRightView)
            
        streakLeftView.snp.makeConstraints{ make in
            make.centerY.equalTo(connectWithLabel)
            make.right.equalTo(connectWithLabel.snp.left).multipliedBy(0.9)
            make.width.equalTo(view.snp.width).multipliedBy(0.2)
            make.height.equalTo(1)
        }
            
        streakRightView.snp.makeConstraints{ make in
            make.centerY.equalTo(connectWithLabel)
            make.left.equalTo(connectWithLabel.snp.right).multipliedBy(1.05)
            make.width.equalTo(view.snp.width).multipliedBy(0.2)
            make.height.equalTo(1)
        }
    }
        
    private func setupSocialMediaStackView() {
        view.addSubview(socialMediaStackView)
        
        socialMediaStackView.addArrangedSubview(facebookButton)
        socialMediaStackView.addArrangedSubview(twitterButton)
        
        facebookButton.snp.makeConstraints{ make in
            make.width.equalTo(view.snp.width).multipliedBy(0.45)
            make.height.equalTo(45)
        }
            
        twitterButton.snp.makeConstraints{ make in
            make.width.equalTo(view.snp.width).multipliedBy(0.45)
            make.height.equalTo(45)
        }
            
        socialMediaStackView.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(connectWithLabel.snp.bottom).multipliedBy(1.13)
        }
    }
        
    private func setupSingUpStackView() {
        view.addSubview(authorizationStackView)
        
        authorizationStackView.addArrangedSubview(existAccount)
        authorizationStackView.addArrangedSubview(signUpButton)
            
        authorizationStackView.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(socialMediaStackView.snp.bottom).multipliedBy(1.1)
        }
    }
    
    // MARK: - Gradient
        
    private func createGradient() {
        let gradientBlue = UIColor(red: 155/255, green: 183/255, blue: 244/255, alpha: 1.0).cgColor
        let gradientRed = UIColor(red: 183/255, green: 172/255, blue: 235/255, alpha: 1.0).cgColor
            
        let gradietLayer = CAGradientLayer()
            
        gradietLayer.frame = self.view.bounds
        gradietLayer.colors = [gradientBlue, gradientRed, UIColor.white.cgColor]
        gradietLayer.startPoint = CGPoint(x: 0.1, y: 0.1)
        gradietLayer.endPoint = CGPoint(x: 0.1, y: 0.8)
            
        view.layer.insertSublayer(gradietLayer, at: 0)
    }

}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 25, y: 5, width: 22, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGray
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 60, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

extension UITextField {
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -5, y: 5, width: 22, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGreen
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
