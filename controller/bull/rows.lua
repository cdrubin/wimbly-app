ngx.header.content_type = 'text/json';

local pgmoon = require( 'pgmoon' )
local pg = pgmoon.new( {
  host = '127.0.0.1',
  port = '5432',
  database = 'example',
  user = 'example'
} )

assert( pg:connect() )

local res = assert( pg:query( 'SELECT * FROM users' ) )

ngx.say( cjson.encode( res ) )
