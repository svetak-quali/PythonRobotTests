from os import path
import requests
from uuid import UUID

class QualiAPILibrary(object):
	def __init__(self, cloudshell_address, quali_api_port, auth_token='', domain="Global", sandbox_uuid: UUID =""):
		self.host = cloudshell_address + ':' + str(quali_api_port)
		url = f'http://{self.host}/Api/Auth/Login'
		body = {"Token": auth_token, 
				"Domain": domain
		}
		r = requests.put(url=url, json=body)
		self.token = "basic " + r.json()
		if sandbox_uuid:
			self.sandbox_id = str(sandbox_uuid)

	def attach_file_to_reservation(self):
		print(self.token)
		url = f'http://{self.host}/Api/Package/AttachFileToReservation'
		headers={"Authorization": self.token}
		path = "C:\\test.txt"
		saved_file_name = 'test'
		overwriteIfExists=True
		data = {
			"reservationId": self.sandbox_id,
			"saveFileAs": saved_file_name,
			"overwriteIfExists": overwriteIfExists
		}

		with open(path, 'rb') as attached_file:
			files = {'QualiPackage': attached_file}
			r = requests.post(url=url, headers=headers, data=data, files=files)

