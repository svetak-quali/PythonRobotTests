import requests
from uuid import UUID

class QualiAPILibrary(object):
	def __init__(self, cloudshell_address, quali_api_port, auth_token='', domain="Global", sandbox_uuid: UUID =""):
		self.host = cloudshell_address + ':' + quali_api_port
		url = f'http://{host}/Api/Auth/Login'
		body = {"Token": auth_token, 
				"Domain": domain
		}
		r = requests.put(url=url, json=body)
		self.token = "basic " + r.text
		if sandbox_uuid:
			self.sandbox_id = str(sandbox_uuid)

	def attach_file_to_reservation(self, path, saved_file_name, overwriteIfExists=True):
		url = f'http://{self.host}/Api/Package/AttachFileToReservation'
		headers={"Authorization": self.token}
		data = {
			"reservationId": self.sandbox_id,
			"saveFileAs": saved_file_name,
			"overwriteIfExists": overwriteIfExists
		}
		
		with open(path, 'rb') as attached_file:
			files = {'QualiPackage': attached_file}
			r = requests.post(url=url, headers=headers, data=data, files=files)
