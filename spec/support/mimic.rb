require 'mimic'
require 'socket'

Mimic.mimic do
  get '/practices' do
    [200, {}, [{
        billing: true,
        created_at: "2013-07-16T01:16:45Z",
        export_url: "https://optimis.duxware.com/bridge.optimis.data.php",
        external_id: 3,
        id: 1,
        migrated_at: nil,
        subdomain: nil,
        token: "9123ikc9u0i3flk2p83cc4osdm4mcaaw",
        updated_at: "2013-07-16T01:16:45Z"
      }].to_json
    ]
  end

  get '/duxware_errors' do
    [200, {}, [{
        error_message: 'Send to optimis.duxware.com failed with ERROR: Did not find this ICD code in DB: 729.90',
        external_id: 3,
        id: 1,
        message_body: '<?xml version="1.0" encoding="UTF-8"?><incomingHeader></incomingHeader>',
        record_id: 43334,
        resent_at: nil,
        created_at: "2013-06-13T16:17:02Z",
        updated_at: "2013-06-13T16:17:02Z"
      }].to_json
    ]
  end
end
