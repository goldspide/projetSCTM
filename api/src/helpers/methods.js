exports.isPhoneNumber = (phone) => {
  if (Number.isNaN(phone)) {
    return false;
  }
  const strPhone = phone.toString();
  if (strPhone.length === 9) {
    const val = parseInt(strPhone.slice(0, 3), 10);
    const val2 = parseInt(strPhone.slice(0, 2), 10);
    if (
      (val >= 670 && val <= 680) ||
      (val >= 650 && val <= 654) ||
      (val >= 655 && val <= 659) ||
      val === 620 ||
      val2 === 69 ||
      val2 === 66
    ) {
      return true;
    }
  }
  return false;
};
