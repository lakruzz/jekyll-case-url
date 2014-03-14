# Jekyll plugin for generating a case tag to an arbitrary change management system
# defined by a setting in _config.yml
#
# Usage: place this file in the _plugins directory and set the required configuration
#        attributes in the _config.yml file
#
# Uses the following attributes in _config.yml:
#   case_path      - (required) the path leading up to the tag specified)
#
# Author: Lars Kruse <lak@praqma.net>
# Site: http://www.praqma.com
# Source: http://github.com/lakruzz/jekyll-case-url
#
# Distributed under the MIT license
# Copyright Lars Kruse 2014

module Jekyll
  class CaseUrl < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
      @case_path = Jekyll.configuration({})['case_path'] 
    end
 
    def render(context)
      "<a class=\"case\" href=\"#{@case_path}#{@text}\">#{@text}</a>"
    end
    
  end
end

Liquid::Template.register_tag('case_url', Jekyll::CaseUrl)