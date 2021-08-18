import requests
import json
import os
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
		url = f'http://{self.host}/Api/Package/AttachFileToReservation'
		headers={"Authorization": self.token}
		if os.path.exists("myfile.txt"):
  			os.remove("myfile.txt")
		else:
  			print("The file does not exist")
		# open("myfile.txt", "x")
		# path = "myfile.txt"
		saved_file_name = 'test'
		data = {
			"reservationId": self.sandbox_id,
			"saveFileAs": saved_file_name,
			"overwriteIfExists": True
		}

		with open(path, 'rb') as attached_file:
			files = {'QualiPackage': attached_file}
			requests.post(url=url, headers=headers, data=data, files=files)

	def get_reservation_attachments_details(self):
		"""
			Get the list of files currently attached to a Sandbox
			:param sandbox_id: 
			:return: List of files attached to the Sandbox
			:rtype: list[str]
		"""
		url = f'http://{self.host}/Api/Package/GetReservationAttachmentsDetails/{self.sandbox_id}'
		get_result = requests.get(url=url, headers={"Authorization": self.token})
		if 200 <= get_result.status_code < 300:
			result_json = json.loads(get_result.content)
			if result_json["Success"]:
				return result_json["AllAttachments"]
			else:
				raise ValueError(result_json["ErrorMessage"])
		else:
			raise ValueError(get_result.content)

	def delete_file_from_reservation(self):
		"""
			Delete an attached file from a Sandbox 
			:param sandbox_id: The ID of the Sandbox to delete the file from
			:param filename: the exact name of the file to delete
		"""
		filename = 'test'
		url = f'http://{self.host}/Api/Package/DeleteFileFromReservation'
		delete_result = requests.post(url=url, json={"reservationId": self.sandbox_id, "FileName": filename}, headers={"Authorization": self.token})
		return delete_result