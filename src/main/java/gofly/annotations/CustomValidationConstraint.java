package gofly.annotations;

import java.math.BigInteger;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CustomValidationConstraint implements ConstraintValidator<CustomValidation, BigInteger> {

	private int min; 
	private int max;
	
	@Override
	public void initialize(CustomValidation constraintAnnotation) {
		this.min = constraintAnnotation.min();
		this.max = constraintAnnotation.max();
	}



	@Override
	public boolean isValid(BigInteger value, ConstraintValidatorContext context) {
		if(value.toString().length() >= min && value.toString().length() <= max) {
			return true;
		}
		return false;
	}

}
