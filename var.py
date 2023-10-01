from datetime import datetime

# VAR
URL = "URL"
AC = "test" + datetime.now().strftime("%Y%m%d")
PS = "PASSWORD"
PS_CHECK =  "CHECKPASSWORD"
EMAIL = "EMAIL"

# ELEMENT
FIND18 = 'xpath://*[@id="myModal"]/div[2]/div/div[2]/div[3]/div[2]/div'
AD = 'class:modalCloseBtn.common__btnStatus'
REGISTER_B = 'xpath://*[@id="app"]/div[2]/nav/div[1]/div/div[3]/div'
REGISTER_ACCOUNT = 'xpath://*[@id="myModal"]/div[2]/div/div[2]/div[1]/img[1]'
USER_TERMS = 'xpath://*[@id="myModal"]/div[2]/div/div[2]/div[3]/label'
NEXT_STEP = 'xpath://*[@id="myModal"]/div[2]/div/div[2]/div[4]/div[2]'
ALLFIELD = 'class:styleInput'
SENDMAIL = 'class:common__button.blue.common__btnStatus'
SURE = 'class:btnText'
WELLCOME = 'class:swal2-confirm.common__bgButton.golden.common__btnStatus.swal-modalWrapper-confirm'