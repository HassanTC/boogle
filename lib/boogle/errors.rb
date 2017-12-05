module Boogle
  # base class exception from which all public Google books exceptions
  class BoogleErrors < StandardError; end
  # 400: Bad Request
  class BadRequest < BoogleErrors; end
  # 400: Invalid Sharing Request
  # 401: Invalid Credentials
  class InvalidCredentials < BoogleErrors; end
  # 403: Daily Limit Exceeded
  # 403: User Rate Limit Exceeded
  # 403: Rate Limit Exceeded
  # 403: Sharing Rate Limit Exceeded
  class LimitExceedeed < BoogleErrors; end
  # 404: resource not found: {fileId}
  class ResourceNotFound < BoogleErrors; end
  # 429: Too Many Requests
  class TooManyRequests < BoogleErrors; end
  # 500: Backend Error
  class UnexpectedError < BoogleErrors; end
end
