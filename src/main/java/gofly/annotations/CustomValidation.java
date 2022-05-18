package gofly.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD) 
@Constraint(validatedBy = CustomValidationConstraint.class) 
public @interface CustomValidation {
	
	int min() default Integer.MIN_VALUE; 
	
	int max() default Integer.MAX_VALUE;
	
	String message() default "field should be between {min} and {max}";
	
	Class<?>[] groups() default { };

	Class<? extends Payload>[] payload() default { };
}