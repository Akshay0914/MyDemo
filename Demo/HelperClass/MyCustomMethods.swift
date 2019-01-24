

import Foundation
import UIKit




//=======================================================

// MARK: TextField Custom Methods

//=======================================================
//extension UITextField : UITextFieldDelegate
//{
//    
//    
//   
//    func TextFieldBorderWithCornerRadiusAndBorderColor(Width borderWidth : CGFloat, Color borderColor : CGColor, Radius cornerRadius : CGFloat)
//    {
//        self.layer.cornerRadius = cornerRadius
//        self.layer.borderColor = borderColor
//        self.layer.borderWidth = borderWidth
//    }
//    
//    func TextFieldSetBackGroundColor(Color backGroundColor : CGColor)
//    {
//        self.layer.backgroundColor = backGroundColor
//    }
//    
//    func TextFieldPadding(_ rect : CGRect)
//    {
//        let paddingView = UIView(frame: rect)
//        paddingView.frame = rect
//        paddingView.backgroundColor = UIColor.red
//         self.leftView = paddingView
//        self.leftViewMode = .always
//       
//    }
//    
//    func TextFieldWithShadow(Radius shadowRadius : CGFloat, Color shadowColor : CGColor, Offset shadowOffset : CGSize, Opacity shadowOpacity : Float)
//    {
//        self.layer.masksToBounds = false
//        self.layer.shadowRadius = shadowRadius
//        self.layer.shadowColor = shadowColor
//        self.layer.shadowOffset = shadowOffset
//        self.layer.shadowOpacity = shadowOpacity
//    }
//    
//    func TextFieldSetTextColorWithPlaceHolderColor(TextColor textColor : UIColor, PlaceHolderColor placeHolderColor : UIColor, placeHolderText text : String)
//    {
//        self.textColor = textColor
//        self.attributedPlaceholder = NSAttributedString(string: text,
//                                                        attributes: [NSAttributedString.Key.foregroundColor: placeHolderColor])
//    }
//    
//    func TextFieldSetFontSizeAndFamily(FamilyName fontName : String, Size fontSize : CGFloat)
//    {
//        let customFont:UIFont = UIFont.init(name: fontName, size: fontSize)!
//        font = customFont
//        self.font = customFont
//    }
//    
//    func TextfieldMaxCharacter(MaxCharacter maxCharacter : NSInteger)
//    {
//        self.delegate = self
//        self.tag = maxCharacter
//    }
//    func getAllTextFields(fromView view: UIView)-> [UITextField] {
//        return view.subviews.compactMap { (view) -> [UITextField]? in
//            if view is UITextField {
//                return [(view as! UITextField)]
//            } else {
//                return getAllTextFields(fromView: view)
//            }
//            }.flatMap({$0})
//    }
//    
//    //TextField Delegate Methods
//    
//    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
//    {
//        if textField.text?.count == 0 && (string == " ") {
//            return false
//        } else {
//            let newLength: Int = (textField.text?.count)! + string.count - range.length
//            return newLength <= textField.tag
//        }
//    }
//    
//}
//=======================================================

// MARK: TextView Custom Methods

//=======================================================
extension UITextView : UITextViewDelegate
{
    
    
    func TextViewBorderWithCornerRadiusAndBorderColor(Width borderWidth : CGFloat, Color borderColor : CGColor, Radius cornerRadius : CGFloat)
    {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
    
    func TextViewSetBackGroundColor(Color backGroundColor : CGColor)
    {
        self.layer.backgroundColor = backGroundColor
    }
    
    
    func TextViewSetTextColor(Color textColor : UIColor)
    {
        self.textColor = textColor
        
    }
    func TextViewSetFontSizeAndFamily(FamilyName fontName : String, Size fontSize : CGFloat)
    {
        let customFont:UIFont = UIFont.init(name: fontName, size: fontSize)!
        font = customFont
        self.font = customFont
    }
    
    func TextViewMaxCharacter(MaxCharacter maxCharacter : NSInteger)
    {
        self.delegate = self
        self.tag = maxCharacter
    }
    
    //TextView Delegate Methods
    
    public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
    {
        if textView.text?.count == 0 && (text == " ") {
            return false
        } else {
            let newLength: Int = (textView.text?.count)! + text.count - range.length
            return newLength <= textView.tag
        }
        
        
    }
}
//=======================================================

// MARK: UiButton Custom Methods

//=======================================================

extension UIButton
{
    func buttonBorderColorWithBorderWidthAndRadius(Width borderWidth : CGFloat ,Color borderColor : UIColor, Radius cornerRadius : CGFloat)
    {
        
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
    
    func buttonTitleColorWithBackGroundColor(TitleColor titleColor : UIColor, BackGroundColor BGColor : UIColor)
    {
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = BGColor
    }
    func buttonWithShadow(Radius shadowRadius : CGFloat, Color shadowColor : CGColor, Offset shadowOffset : CGSize, Opacity shadowOpacity : Float)
    {
        self.layer.masksToBounds = false
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
    }
    
    func buttonSetFontSizeAndFamily(FamilyName fontName : String, Size fontSize : CGFloat)
    {
        let customFont:UIFont = UIFont.init(name: fontName, size: fontSize)!
       
        self.titleLabel?.font = customFont
    }
    func buttonTitleWithImage(buttonimage image : UIImage, buttonTitle Title : String)
    {
        self.setImage(image, for: .normal)
        self.tintColor = UIColor.white
        let width = self.frame.size.width * 25 / 100
        self.titleEdgeInsets = UIEdgeInsets(top: 6,left:  5,bottom: 6,right: 5)
        
        self.imageEdgeInsets = UIEdgeInsets(top: 5,left: 5,bottom: 5,right: width-10)
        self.setTitle(Title, for: .normal)


    }
}
//=======================================================

// MARK: UILabel Custom Methods

//=======================================================
extension UILabel
{
    func labelBorderWithCornerRadiusAndBorderColor(Width borderWidth : CGFloat, Color borderColor : CGColor, Radius cornerRadius : CGFloat)
    {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
    
    func labelSetBackGroundColor(Color backGroundColor : CGColor)
    {
        self.layer.backgroundColor = backGroundColor
    }
    
    func labelSetTextColor(Color textColor : UIColor)
    {
        self.textColor = textColor
        
    }
    
    func labelWithShadow(Radius shadowRadius : CGFloat, Color shadowColor : CGColor, Offset shadowOffset : CGSize, Opacity shadowOpacity : Float)
    {
        self.layer.masksToBounds = false
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
    }
    func labelSetFontSizeAndFamily(FamilyName fontName : String, Size fontSize : CGFloat)
    {
        let customFont:UIFont = UIFont.init(name: fontName, size: fontSize)!
        font = customFont
        self.font = customFont
    }
    func labelSetAlignment(Alignment align : NSTextAlignment)
    {
        self.textAlignment = align
    }
    
    func labelSetSubTextBold(pSubString : String, font: UIFont, pColor: UIColor){
        
        
        let attributedString: NSMutableAttributedString = self.attributedText != nil ? NSMutableAttributedString(attributedString: self.attributedText!) : NSMutableAttributedString(string: self.text!);
        
        
        let range = attributedString.mutableString.range(of: pSubString, options:NSString.CompareOptions.caseInsensitive)
        if range.location != NSNotFound {
            // NSFontAttributeName: UIFont.boldSystemFont(ofSize: fontSize),
            attributedString.addAttribute(NSAttributedString.Key.font, value: font, range: range)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: pColor, range: range)
        }
        self.attributedText = attributedString
        
    }
}

extension UIImageView
{
    func imageViewBorderWithCornerRadiusAndBorderColor(Width borderWidth : CGFloat, Color borderColor : CGColor, Radius cornerRadius : CGFloat)
    {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
    func ImageWithShadow(Radius shadowRadius : CGFloat, Color shadowColor : CGColor, Offset shadowOffset : CGSize, Opacity shadowOpacity : Float)
    {
       // self.layer.masksToBounds = false
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
    }
    
    
}

extension UIView
{
    func ViewBorderWithCornerRadiusAndBorderColor(Width borderWidth : CGFloat, Color borderColor : CGColor, Radius cornerRadius : CGFloat)
    {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
    func ViewWithShadow(Radius shadowRadius : CGFloat, Color shadowColor : CGColor, Offset shadowOffset : CGSize, Opacity shadowOpacity : Float)
    {
        // self.layer.masksToBounds = false
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
    }
}
//==========================================================

//MARK: MutableString Extenstion

//==========================================================
extension NSMutableAttributedString {
    @discardableResult func bold(_ text: String) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Helvetica-Bold", size: 20)!]
        let boldString = NSMutableAttributedString(string:text, attributes: attrs)
        append(boldString)
        return self
    }
    
    @discardableResult func normal(_ text: String) -> NSMutableAttributedString {
        let normal = NSAttributedString(string: text)
        append(normal)
        return self
    }
    
    
    
}
