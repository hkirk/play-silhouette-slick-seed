package utils

import com.mohiva.play.silhouette.api.Env
import com.mohiva.play.silhouette.impl.authenticators.CookieAuthenticator
import models.User

/**
  * Created by hki on 29-03-2016.
  */
trait CookieEnv extends Env {
  type I = User
  type A = CookieAuthenticator
}
