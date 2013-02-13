module.exports.app = (appExports, model) ->
  user = model.at('_user')

  appExports.profileAddWebsite = (e, el) ->
    newWebsite = model.get('_newProfileWebsite')
    return if /^(\s)*$/.test(newWebsite)
    user.unshift 'profile.websites', newWebsite
    model.set '_newProfileWebsite', ''

  appExports.profileEdit = (e, el) -> model.set '_profileEditing', true
  appExports.profileSave = (e, el) -> model.set '_profileEditing', false
