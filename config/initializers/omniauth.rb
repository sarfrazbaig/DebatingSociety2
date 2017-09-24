Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'tzsUCxJimBX9NOyl1WuXGu1sJ', 'fYJld1RDa6BGvNhBtMysKzbziD7QWhqDy2JC04ykLP6IsS3oTK'
  provider :facebook, '738337183003334', '326d77e1d5c80ce92c05b1a990d3ed7c',
  scope: 'public_profile', info_fields: 'id,name,link'
end