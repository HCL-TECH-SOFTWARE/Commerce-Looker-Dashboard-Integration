/**
	*==================================================
	Copyright [2021] [HCL Technologies]
	
	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
	    http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
	*==================================================
**/
var crypto = require('crypto');
var querystring = require('querystring');
const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
var cors = require('cors');
const app = express();
app.use(cors());

app.use(express.static(path.join(__dirname, "client")));

app.use(bodyParser.json());

app.get("/dashboard", (req, res, next) => {
    console.log("Messaged received--", req.body);
    var url = sample();
    console.log('Created url: ' + url);
    res.send({ url });
})

function nonce(len) {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for (var i = 0; i < len; i++)
        text += possible.charAt(Math.floor(Math.random() * possible.length));

    return text;
}

function forceUnicodeEncoding(string) {
    return decodeURIComponent(encodeURIComponent(string));
}

function created_signed_embed_url(options) {
    // looker options
    var secret = options.secret;
    var host = options.host;

    // user options
    var json_external_user_id = JSON.stringify(options.external_user_id);
    var json_first_name = JSON.stringify(options.first_name);
    var json_last_name = JSON.stringify(options.last_name);
    var json_permissions = JSON.stringify(options.permissions);
    var json_models = JSON.stringify(options.models);
    var json_group_ids = JSON.stringify(options.group_ids);
    var json_external_group_id = JSON.stringify(options.external_group_id || "");
    var json_user_attributes = JSON.stringify(options.user_attributes || {});
    var json_access_filters = JSON.stringify(options.access_filters);

    // url/session specific options
    var embed_path = '/login/embed/' + encodeURIComponent(options.embed_url);
    var json_session_length = JSON.stringify(options.session_length);
    var json_force_logout_login = JSON.stringify(options.force_logout_login);

    // computed options
    var json_time = JSON.stringify(Math.floor((new Date()).getTime() / 1000));
    var json_nonce = JSON.stringify(nonce(16));

    // compute signature
    var string_to_sign = "";
    string_to_sign += host + "\n";
    string_to_sign += embed_path + "\n";
    string_to_sign += json_nonce + "\n";
    string_to_sign += json_time + "\n";
    string_to_sign += json_session_length + "\n";
    string_to_sign += json_external_user_id + "\n";
    string_to_sign += json_permissions + "\n";
    string_to_sign += json_models + "\n";
    string_to_sign += json_group_ids + "\n";
    string_to_sign += json_external_group_id + "\n";
    string_to_sign += json_user_attributes + "\n";
    string_to_sign += json_access_filters;

    var signature = crypto.createHmac('sha1', secret).update(forceUnicodeEncoding(string_to_sign)).digest('base64').trim();

    // construct query string
    var query_params = {
        nonce: json_nonce,
        time: json_time,
        session_length: json_session_length,
        external_user_id: json_external_user_id,
        permissions: json_permissions,
        models: json_models,
        access_filters: json_access_filters,
        first_name: json_first_name,
        last_name: json_last_name,
        group_ids: json_group_ids,
        external_group_id: json_external_group_id,
        user_attributes: json_user_attributes,
        force_logout_login: json_force_logout_login,
        signature: signature
    };

    var query_string = querystring.stringify(query_params);

    return host + embed_path + '?' + query_string;
}

function sample() {
    var thirty_minutes = 30 * 60;

    var url_data = {
        host: 'hclamerica.cloud.looker.com',
        secret: 'cc1e2c6a359a97538efc5596c42687a8fcc722d014bd122353278d46c154df89',
        external_user_id: 'user-1',
        first_name: 'Dawinderjit',
        last_name: 'Kaur',
        group_ids: [],
        external_group_id: 'Marketing',
        permissions: ['access_data', 'see_lookml_dashboards', 'see_looks', 'see_user_dashboards', 'explore', 'create_table_calculations', 'save_content', 'send_outgoing_webhook', 'send_to_s3', 'send_to_sftp', 'schedule_look_emails', 'schedule_external_look_emails', 'send_to_integration', 'create_alerts', 'download_with_limit', 'download_without_limit', 'see_sql', 'see_drill_overlay', 'embed_browse_spaces'],
        models: ['wcs_order','google_analytics_block'],
        access_filters: {},
        user_attributes: { "locale": "en" },
        session_length: thirty_minutes,
        embed_url: "embed/dashboards/31",
        force_logout_login: true
    };

    var url = created_signed_embed_url(url_data);
    return "https://" + url;
}


const port = 5100;
app.listen(port, () => console.log('server started on Port', port));
