module Boogle
  # base class exception from which all public Google books exceptions
  class BoogleErrors < StandardError; end
  # 400: Bad Request
  class BadRequest < BoogleErrors; end
  # 400: Invalid Sharing Request
  # 401: Invalid Credentials
  class InvalidCredentials < BoogleError; end
  # 403: Daily Limit Exceeded
  # 403: User Rate Limit Exceeded
  # 403: Rate Limit Exceeded
  # 403: Sharing Rate Limit Exceeded
  class LimitExceedeed < BoogleError; end
  # 404: resource not found: {fileId}
  class ResourceNotFound < BoogleError; end
  # 429: Too Many Requests
  class TooManyRequests < BoogleError; end
  # 500: Backend Error
  class UnexpectedError < BoogleError; end
end
