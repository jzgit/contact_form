json.array!(@contact_inquiries) do |contact_inquiry|
  json.extract! contact_inquiry, :id, :email, :subject, :description, :first_name, :last_name
  json.url contact_inquiry_url(contact_inquiry, format: :json)
end
