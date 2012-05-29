ProfileValidator = Model.extend({
  validate: {
    errorMessage: "The demo form isn't happy, make " +
                  "things right and try again!",
    successMessage: "Great, you made a happy form, " +
                    "Try it again!",
    inputs: {
      firstName: {
        validators: [
          shouldBeLongerThan(6)
        ]
      },
      lastName: {
        validators: [
          shouldBeLongerThan(6)
        ]
      },
      about: {
        validators: [
          shouldBeLongerThan(20)
        ]
      }
    }
  }
});
