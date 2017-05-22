import UIKit


class DatePickingTextField: UITextField, UITextFieldDelegate {
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)!
		delegate = self
		setupDateInput()
	}
	
	required override init(frame: CGRect) {
		super.init(frame: frame)
		delegate = self
		setupDateInput()
	}
	
	func setupDateInput(){
		let datePickerView:UIDatePicker = UIDatePicker()
		datePickerView.datePickerMode = UIDatePickerMode.date
		self.inputView = datePickerView
		datePickerView.addTarget(self, action: #selector(self.datePickerValueChanged), for: UIControlEvents.valueChanged)
	}
	
	func datePickerValueChanged(sender:UIDatePicker) {
		self.text = DateFormatterTool.getString(fromDate: sender.date)
	}
}

