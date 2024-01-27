import requests

myfile = open("/root/certificate.txt", "r")
myline = myfile.readline()
prevDomain = ""
while myline:
    if "Domain" in myline: 
       prevDomain = myline.split(": ")[1].strip()

    if "Expiry" in myline and "VALID: " in myline:
       validDays = myline.split("VALID: ")[1].split(" days")[0]

       if(int(validDays)<7):
          telegramMessage = prevDomain + " expire in " + validDays + " days"
          in_values = {'text':telegramMessage,'chat_id':'INPUTYOURCHATID'}
          res = requests.post('https://api.telegram.org/bot1111111111:INPUTYOURBOTTOKEN/sendMessage',data = in_values)

    myline = myfile.readline()
myfile.close()