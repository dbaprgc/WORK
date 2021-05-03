import smtplib, ssl

port = 465  # For SSL
smtp_server = "smtp.mail.yahoo.com"
set_debuglevel(1)
sender_email = "rick.chiodo@yahoo.com"  # Enter your address
receiver_email = "rick.chiodo@gmail.com"  # Enter receiver address
password = input("Type your password and press enter: ")
message = """\
Subject: Hi there

This message is sent from Python."""

context = ssl.create_default_context()
with smtplib.SMTP_SSL(smtp_server, port, timeout=60, context=context) as server:
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, message)