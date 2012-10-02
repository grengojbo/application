maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Deploys and configures a variety of applications"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"
recipe           "application", "Loads application databags and selects recipes to use"

%w{ python gunicorn }.each do |cb|
  depends cb
end

depends "python", ">= 1.0.6"
