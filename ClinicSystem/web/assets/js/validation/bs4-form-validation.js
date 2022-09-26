/*
    Instructions and info at: https://github.com/colmeye/BS4-Form-Validation
*/

class Validation {

    constructor(formId) {
        // Form globals
        this.form = $("#" + formId);
        this.submitButton = $(this.form).find('input[type="submit"]');
        this.submitButtonText = this.submitButton.val();

        // Global input array
        this.inputLog = [];

        // Basic css classes
        this.validC = "is-valid";
        this.invalidC = "is-invalid";

        // Enables submit listener
        this.checkAll();
    }



    ////////////////////
    // Main Functions //
    ////////////////////
    /*
        The functions in this category are called by developers to add a responsive layer of form validation
    */


    /*
        Make a general text input required for form submission.
    */
    requireText(inputId, minLength, maxLength, illegalCharArray, necessaryCharArray) {
        let input = $("#" + inputId);
        let invalidString = "";

        // Create requried *
        // this.createAsterisk(input);

        // Add this input to the input log, for easy check alls
        this.inputLog.push(["requireText", inputId, minLength, maxLength, illegalCharArray, necessaryCharArray]);

        // Check string for issues while editing
        $(input).on('input focus', input, () => {
            // Append any invalid issues to string when editing
            invalidString = "";
            invalidString += this.lengthCheck(input, minLength, maxLength);
            invalidString += this.illegalCharCheck(input, illegalCharArray);
            this.showWarning(input, inputId, invalidString);
        });

        // Enable submit again on an input change
        $(input).on('input', input, () => {
            this.submitDisabled(false, this.submitButtonText);
        });

        // Check string for issues after editing
        $(input).on('focusout', input, () => {
            invalidString += this.necessaryCharCheck(input, necessaryCharArray);
            this.showWarning(input, inputId, invalidString);
            // Remove green border
            this.removeValid(input);
        });

        return invalidString;
    }


    /*
        Same as require string, but also regex for proper email 
    */
    requireEmail(inputId, minLength, maxLength, illegalCharArray, necessaryCharArray) {
        let input = $("#" + inputId);
        let invalidString = "";

        // Create requried *
        // this.createAsterisk(input);

        // Add this input to the input log, for easy check alls
        this.inputLog.push(["requireEmail", inputId, minLength, maxLength, illegalCharArray, necessaryCharArray]);

        // Check string for issues while editing
        $(input).on('input focus', input, () => {
            // Append any invalid issues to string when editing
            invalidString = "";
            invalidString += this.lengthCheck(input, minLength, maxLength);
            invalidString += this.illegalCharCheck(input, illegalCharArray);
            this.showWarning(input, inputId, invalidString);
        });

        // Enable submit again on an input change
        $(input).on('input', input, () => {
            this.submitDisabled(false, this.submitButtonText);
        });

        // Check string for issues after editing
        $(input).on('focusout', input, () => {
            invalidString += this.necessaryCharCheck(input, necessaryCharArray);
            invalidString += this.emailCheck(input);
            this.showWarning(input, inputId, invalidString);
            // Remove green border
            this.removeValid(input);
        });

        return invalidString;
    }


    /*
        Used for registering passwords. Almost the same as the requireText() function. This function requires at least
        one special character and number in the password. It is also possible to assign a confirmation input using passConfirmId.
    */
    registerPassword(inputId, minLength, maxLength, illegalCharArray, necessaryCharArray, passConfirmId) {
        let input = $("#" + inputId);
        let passConfirm = $("#" + passConfirmId);
        let invalidString = "";
        let invalidCheckString = "";

        // Create requried *
        // this.createAsterisk(input);
        // this.createAsterisk(passConfirm);

        // Add this input to the input log, for easy check alls
        this.inputLog.push(["registerPassword", inputId, minLength, maxLength, illegalCharArray, necessaryCharArray, passConfirmId]);

        // On editing main password
        $(input).on('input focus', input, () => {
            // Append any invalid issues to string when editing
            invalidString = "";
            invalidString += this.lengthCheck(input, minLength, maxLength);
            invalidString += this.illegalCharCheck(input, illegalCharArray);
            this.showWarning(input, inputId, invalidString);

            // Check if passwords match
            invalidCheckString = "";
            invalidCheckString += this.passwordMatchCheck(input, passConfirm);
            this.showWarning(passConfirm, passConfirmId, invalidCheckString);
        });

        // Enable submit again on an input change
        $(input).on('input', input, () => {
            this.submitDisabled(false, this.submitButtonText);
        });

        // Check string for issues after editing
        $(input).on('focusout', input, () => {
            invalidString += this.necessaryCharCheck(input, necessaryCharArray);
            invalidString += this.capitalCheck(input);
            invalidString += this.numberCheck(input);
            invalidString += this.specialCharCheck(input);
            this.showWarning(input, inputId, invalidString);
            // Remove green border
            this.removeValid(input);
            this.removeValid(passConfirm);
        });

        // CONFIRM PASSWORD //

        $(passConfirm).on('input focus', passConfirm, () => {
            invalidCheckString = "";
            invalidCheckString += this.passwordMatchCheck(input, passConfirm);
            this.showWarning(passConfirm, passConfirmId, invalidCheckString);
        });

        // Enable submit again on an input change
        $(passConfirm).on('input', input, () => {
            this.submitDisabled(false, this.submitButtonText);
        });

        $(passConfirm).on('focusout', passConfirm, () => {
            this.removeValid(passConfirm);
        });


        return invalidString;
    }





    ////////////
    // Checks //
    ////////////
    /*
        Checks return nothing if there are no issues.
        If there is a validation issue, a string is returned that explains the issue.
        The main functions call these depending on their parameters.

        Returns: String containing the error or blank
    */

    // Checks if too long or short
    lengthCheck(input, minLength, maxLength) {
        if (input.val().length <= minLength) {
            return "Must be longer than " + minLength + " characters. \n";
        } else if (input.val().length >= maxLength) {
            return "Must be shorter than " + maxLength + " characters. \n";
        } else {
            return "";
        }
    }

    // Checks if contains unwanted text
    illegalCharCheck(input, illegalCharArray) {
        // Reset loop stringe
        let illegalsUsed = "";
        // loop through each illegal item to check for
        $(illegalCharArray).each(function() {
            if (input.val().indexOf(this) >= 0) {
                // Append illegal strings to var
                // check if char is a space
                if (!this.trim().length == 0) {
                    illegalsUsed += " " + this;
                } else {
                    illegalsUsed += " spaces"
                }
            }
        });

        // Create output based on result of illegals concatination
        if (illegalsUsed === "") {
            return "";
        } else {
            return "Cannot use:" + illegalsUsed + ". ";
        }
    }

    // Check if doesnt contain needed text
    necessaryCharCheck(input, necessaryCharArray) {
        let notUsed = "";
        // loop through each illegal item to check for
        $(necessaryCharArray).each(function() {
            if (!(input.val().indexOf(this) >= 0)) {
                notUsed += " " + this;
            }
        });

        // Create output based on result of illegals concatination
        if (notUsed === "") {
            return "";
        } else {
            return "Must contain:" + notUsed + ". ";
        }
    }

    // Ensure that input has at least one number
    numberCheck(input) {
        if (!input.val().match(/\d/)) {
            return "Must contain a number. ";
        } else {
            return "";
        }
    }

    // Ensure there is at least one special character
    specialCharCheck(input) {
        if (!input.val().match(/\W|_/g)) {
            return "Must contain a special character. ";
        } else {
            return "";
        }
    }

    // Regex for at least one capital
    capitalCheck(input) {
        if (input.val().match(/[A-Z]+/)) {
            return "";
        } else {
            return "Must contain capital letter. ";
        }
    }

    // Check if passwords match
    passwordMatchCheck(input, passConfirm) {
        if (input.val() === passConfirm.val()) {
            return "";
        } else {
            return "Passwords do not match. ";
        }
    }

    // Use regex to require an email
    emailCheck(input) {
        if (input.val().match(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)) {
            return "";
        } else {
            return "Is not a proper email";
        }
    }


    ////////////////
    // Check Alls //
    ////////////////
    /*
        These functions deal with form submission, checking all inputs before allowing submission
    */


    // Enable/Disable the submit button, and change its value
    submitDisabled(trueFalse, value) {
        $(this.submitButton).prop('disabled', trueFalse);
        $(this.submitButton).val(value);
    }



    checkAll() {
        $(this.form).submit((e) => {
            // Loop through every input added to object
            $(this.inputLog).each((i) => {
                // Reset loop variables
                let invalidString = "";
                let invalidCheckString = "";
                let thisLog = this.inputLog[i];

                // Make block scope elements to help understand which elements in the array are which
                let inputId = thisLog[1];
                let input = $("#" + inputId);
                let minLength = thisLog[2];
                let maxLength = thisLog[3];
                let illegalCharArray = thisLog[4];
                let necessaryCharArray = thisLog[5];
                if (thisLog[0] === "registerPassword") {
                    var passConfirmId = thisLog[6];
                    var passConfirm = $("#" + passConfirmId);
                }

                // Check for issues
                invalidString = "";
                invalidString += this.lengthCheck(input, minLength, maxLength);
                invalidString += this.illegalCharCheck(input, illegalCharArray);
                invalidString += this.necessaryCharCheck(input, necessaryCharArray);
                if (thisLog[0] === "requireEmail") {
                    invalidString += this.emailCheck(input);
                }
                if (thisLog[0] === "registerPassword") {
                    invalidString += this.capitalCheck(input);
                    invalidString += this.numberCheck(input);
                    invalidString += this.specialCharCheck(input);
                    invalidCheckString += this.passwordMatchCheck(input, passConfirm);
                }

                // Display issues
                if (invalidString) {
                    this.showWarning(input, inputId, invalidString);
                    this.submitDisabled(true, "Error, please check your form");
                    // Stop submission
                    e.preventDefault();
                }
                if (invalidCheckString) {
                    this.showWarning(passConfirm, passConfirmId, invalidCheckString);
                    this.submitDisabled(true, "Error, please check your form");
                    // Stop submission
                    e.preventDefault();
                }


            });

        });

    }



    ////////////////////
    // Class Updating //
    ////////////////////
    /*
        Simplifies redundant class code into a few functions
    */

    // Perform restrictions depending on the input
    showWarning(input, inputId, invalidString) {
        // Provide proper styling and feedback
        if (invalidString) {
            this.generateFeedback(input, inputId, "invalid-feedback", invalidString);
            this.makeInvalid(input);
        } else {
            this.generateFeedback(input, inputId, "", "");
            this.makeValid(input);
        }
    }

    // Adds a valid class to element and removes invalid
    makeValid(element) {
        if (!element.hasClass(this.validC)) {
            element.addClass(this.validC);
        }
        // Remove invalid class if it exists
        if (element.hasClass(this.invalidC)) {
            element.removeClass(this.invalidC);
        }
    }

    // Adds a valid class to element and removes invalid
    removeValid(element) {
        // Remove invalid class if it exists
        if (element.hasClass(this.validC)) {
            element.removeClass(this.validC);
        }
    }

    // adds invalid class to element and removes valid class
    makeInvalid(element) {
        if (!element.hasClass(this.invalidC)) {
            element.addClass(this.invalidC);
        }
        // Remove valid class
        if (element.hasClass(this.validC)) {
            element.removeClass(this.validC);
        }
    }


    /////////////////////
    // Text Generation //
    /////////////////////
    /*
        Visual output such as errors or *
    */

    // Create required asterisk after text
    createAsterisk(input) {
        $("<span class='text-danger'>*</span>").insertBefore(input)
    }


    // Creates responsive tiny text below inputs to inform user of issues
    generateFeedback(input, inputId, validityClass, prompt) {
        // Delete feedback if it already exists to make room for new content
        $('#' + inputId + '-feedback').remove();

        // Create feedback element if it does not exist
        $('<div id="' + inputId + '-feedback" class="' + validityClass + '">' + prompt + '</div>').insertAfter(input);
    }



}